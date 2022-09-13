/* @jsx jsx */
import { jsx } from "theme-ui";
import { Box } from "@theme-ui/components";
import { keyframes } from "@emotion/core";

const CHAR_WIDTH = 0.64; // Char width in ems
const CURSOR_BLICK = 500;

const cursor = keyframes`
  from, to { border-color: transparent }
  50% { border-color: inherit; }
`;

function Typewriter({
  children,
  hideCursorWhenDone = true,
  duration = 50,
  delay = 0
}) {
  const lines = children.split("\n");
  const lineLengths = lines.map(line => line.split("").length);
  const lineDurations = lines.map((line, idx) => {
    const length = lineLengths[idx];
    return length * duration;
  });
  const lineDelays = lines.map((line, idx) => {
    // Sum all durations to the idx line
    return delay + lineDurations[idx];
  });

  let splitLines = Array(lines.length);
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    const length = line.split("").length;
    const lDuration = length * duration;
    let lDelay = delay + lDuration;
    if (i > 0) {
      for (let j = 0; j <= i; j++) {
          console.log(splitLines);
          // lDelay += splitLines[i][3];
      }
    }
    splitLines.push([line, length, lDuration, lDelay]);
  }

  console.log(splitLines);
  console.log(lineLengths, lineDurations, lineDelays);
  return lines.map((line, idx) => {
    console.log(line);
    const typewriter = keyframes`
      from { width: 0 }
      to { width: ${lineLengths[idx] * CHAR_WIDTH}em }
    `;
    const lineDuration = lineDurations[idx];
    const lineDelay = lineDelays[idx];

    return (
      <Box
        as="span"
        key={idx}
        sx={{
          display: "block",
          overflow: "hidden",
          whiteSpace: "nowrap",
          borderRight: ".05em solid transparent",
          width: 0,
          animation: `${typewriter} ${lineDuration}ms ${lineDelay}ms steps(${
            lineLengths[idx]
          }, end), 
            ${cursor} ${CURSOR_BLICK}ms ${lineDelay}ms ${
            hideCursorWhenDone
              ? (lineDuration + lineDelay) / CURSOR_BLICK
              : "infinite"
          } step-end`,
          animationFillMode: "forwards"
        }}
      >
        {line}
      </Box>
    );
  });
}

export default Typewriter;
