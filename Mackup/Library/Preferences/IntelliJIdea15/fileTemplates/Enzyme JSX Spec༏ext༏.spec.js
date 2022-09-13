/* eslint no-unused-expressions: 0 */
import React from 'react'
import { expect } from 'chai'
import { shallow } from 'enzyme'
import chai from 'chai'
import chaiEnzyme from 'chai-enzyme'
import ${NAME} from './${NAME}'
chai.use(chaiEnzyme())

describe(`${NAME}`, () => {

    it(`should be defined`, () => {
        const el = shallow(<${NAME}/>)
        expect(el).to.not.be.undefined
    })

})
