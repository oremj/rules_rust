# buildifier: disable=module-docstring
def _wasm_bindgen_transition(_settings, _attr):
    """The implementation of the `wasm_bindgen_transition` transition

    Args:
        _settings (dict): A dict {String:Object} of all settings declared
            in the inputs parameter to `transition()`
        _attr (dict): A dict of attributes and values of the rule to which
            the transition is attached

    Returns:
        dict: A dict of new build settings values to apply
    """
    return {"//command_line_option:platforms": str(Label("//rust/platform:wasm"))}

wasm_bindgen_transition = transition(
    implementation = _wasm_bindgen_transition,
    inputs = [],
    outputs = ["//command_line_option:platforms"],
)
