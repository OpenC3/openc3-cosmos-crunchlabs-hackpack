temperature = tlm("SENSOR_KIT LATEST TEMP_C")
temperature = str(round(float(temperature), 1)) + "C"
print(f"Current Temperature: {temperature}")
value = message_box(f"Are you sure you want to print {temperature}?", "Yes")
match value:
    case "Yes":
        cmd(f"LABEL_MAKER DRAW with LABEL {temperature}")