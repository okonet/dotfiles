import React from "react";
import { Box } from "@theme-ui/components";
import { keyframes } from "@emotion/core";

const CHAR_WIDTH = 0.64; // Char width in ems

const cursor = keyframes`
  from, to { border-color: transparent }
  50% { border-color: inherit; }
`;

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

function Typewriter({ children, duration = 1000, delay = 0 }) {
  const length = getCharsFromChildren(children).length;
  const width = length * CHAR_WIDTH;
  const typewriter = keyframes`
      from { width: 0 }
      to { width: ${width}em }
    `;
  return (
    <Box
      as="span"
      sx={{
        display: "block",
        overflow: "hidden",
        width: 0,
        whiteSpace: "nowrap",
        borderRight: ".05em solid",
        animation: `${typewriter} ${duration}ms ${delay}ms steps(${length}, end), 
            ${cursor} .5s infinite step-end`,
        animationFillMode: "forwards"
      }}
    >
      {children}
    </Box>
  );
}

export default Typewriter;
