import type {EventHandler, EventHandlerRequest} from 'h3'

export const defineWrappedResponseHandler = <T extends EventHandlerRequest, D>(
  handler: EventHandler<T, D>
): EventHandler<T, D> =>
  defineEventHandler<T>(async event => {
    try {
      const data = await handler(event)
      return {data, code: 200, message: 'success', time: Date.now()}
    } catch (error) {
      return {error, code: 0, message: 'fail', time: Date.now()}
    }
  })
