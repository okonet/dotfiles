import React from "react";
import { Box } from "@theme-ui/components";
import { keyframes } from "@emotion/core";

const CHAR_WIDTH = 0.64; // Char width in ems

const cursor = keyframes`
  from, to { border-color: transparent }
  50% { border-color: inherit; }
`;

function Typewriter({ children, duration = 1000, delay = 0 }) {
  return children.split("\n").map((line, idx) => {
    const length = line.split("").length;
    const width = length * CHAR_WIDTH;
    const typewriter = keyframes`
      from { width: 0 }
      to { width: ${width}em }
    `;
    return (
      <Box
        as="span"
        key={idx}
        sx={{
          display: "block",
          overflow: "hidden",
          width: 0,
          whiteSpace: "nowrap",
          borderRight: ".05em solid",
          animation: `${typewriter} ${duration}ms ${(idx + 1) *
            delay}ms steps(${length}, end),
            ${cursor} .5s infinite step-end`,
          animationFillMode: "forwards"
        }}
      >
        {line}
      </Box>
    );
  });
}

export default Typewriter;
