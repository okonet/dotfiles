/* eslint no-unused-expressions: 0 */

import React from 'react'
import ReactDOM from 'react-dom'
import TestUtils from 'react-addons-test-utils'
import ${NAME} from '../${NAME}'
const R$ = require('rquery')(require('lodash'), React, ReactDOM, TestUtils)

describe('${NAME}', () => {

    it('should be defined', () => {
        const Component = R$(TestUtils.renderIntoDocument(
            <${NAME} />
        ))
        Component[0].should.not.be.undefined
    })

})
