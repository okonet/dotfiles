/** @jsx jsx */
import PropTypes from "prop-types";
import { Box } from "@theme-ui/components";
import { keyframes, jsx } from "@emotion/core";

const CHAR_WIDTH = 0.64; // Char width in ems
const CURSOR_SPEED = 500; // Cursor blink frequency in ms

function getCharsFromChildren(children) {
  return React.Children.map(children, child => {
    switch (typeof child) {
      case "string": {
        return child.split("");
      }
      case "object": {
        return getCharsFromChildren(child.props.children);
      }
      default: {
        return 0;
      }
    }
  });
}

const hideAnimation = keyframes`
  from { opacity: 1 } 
  to { opacity: 0 }
`;

const Cursor = () => {
  const cursorAnimation = keyframes`
    from, to { color: transparent }
    50% { color: inherit; }
  `;

  return (
    <span
      css={{
        animation: `${cursorAnimation} ${CURSOR_SPEED}ms infinite step-end`,
        animationFillMode: "forwards"
      }}
    >
      ▋
    </span>
  );
};

function Typewriter({
  children,
  duration = 1000,
  delay = 0,
  hideCursorWhenDone = true,
  cursor = Cursor,
  charWidth = CHAR_WIDTH
}) {
  const length = getCharsFromChildren(children).length;
  const width = length * charWidth;
  const typewriterAnimation = keyframes`
      from { width: 0 }
      to { width: ${width}em }
    `;
  return (
    <Box
      as="span"
      sx={{
        position: "relative",
        display: "block",
        overflow: "hidden",
        width: 0,
        whiteSpace: "nowrap",
        animation: `${typewriterAnimation} ${duration}ms ${delay}ms steps(${length}, end)`,
        animationFillMode: "forwards"
      }}
    >
      {children}
      <span
        css={{
          position: "absolute",
          right: `-${CHAR_WIDTH}em`,
          animation: `${hideAnimation} ${duration + delay}ms ${
            hideCursorWhenDone ? 1 : "infinite"
          } step-end`,
          animationFillMode: "forwards"
        }}
      >
        {React.createElement(cursor)}
      </span>
    </Box>
  );
}

Typewriter.propTypes = {
  children: PropTypes.node,
  cursor: PropTypes.node
};

export default Typewriter;
