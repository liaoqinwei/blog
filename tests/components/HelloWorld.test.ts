import {mount} from "@vue/test-utils"
import HelloWorld from "@/components/HelloWorld.vue";
import {describe, expect, test} from "vitest";

const wrapper = mount(HelloWorld, {
  props: {
    msg: "Hello World"
  }
})

describe("test component 'HelloWorld.vue'", () => {
  test("display prop 'msg'", () => {
    expect(wrapper.find('h1').text()).equals("Hello World")
  })

  test("test increment count", async () => {
    await wrapper.find(".card").find("button").trigger('click')
    expect(wrapper.find(".card").find("button").text()).contains("count is 1")
  })

})
