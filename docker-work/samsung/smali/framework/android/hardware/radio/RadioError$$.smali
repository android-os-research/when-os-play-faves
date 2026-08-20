.class public interface abstract Landroid/hardware/radio/RadioError$$;
.super Ljava/lang/Object;
.source "RadioError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 189
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 190
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 193
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 194
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 195
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 196
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/RadioError$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 199
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 200
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 201
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/RadioError$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 200
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 204
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 199
    :cond_56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    .end local v1    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "_aidl_sj":Ljava/util/StringJoiner;
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "_aidl_v"    # I

    .line 97
    if-nez p0, :cond_5

    const-string v0, "NONE"

    return-object v0

    .line 98
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "RADIO_NOT_AVAILABLE"

    return-object v0

    .line 99
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "GENERIC_FAILURE"

    return-object v0

    .line 100
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string v0, "PASSWORD_INCORRECT"

    return-object v0

    .line 101
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string v0, "SIM_PIN2"

    return-object v0

    .line 102
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string v0, "SIM_PUK2"

    return-object v0

    .line 103
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string v0, "REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 104
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string v0, "CANCELLED"

    return-object v0

    .line 105
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string v0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object v0

    .line 106
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string v0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object v0

    .line 107
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string v0, "SMS_SEND_FAIL_RETRY"

    return-object v0

    .line 108
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string v0, "SIM_ABSENT"

    return-object v0

    .line 109
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string v0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object v0

    .line 110
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string v0, "MODE_NOT_SUPPORTED"

    return-object v0

    .line 111
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string v0, "FDN_CHECK_FAILURE"

    return-object v0

    .line 112
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string v0, "ILLEGAL_SIM_OR_ME"

    return-object v0

    .line 113
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    const-string v0, "MISSING_RESOURCE"

    return-object v0

    .line 114
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    const-string v0, "NO_SUCH_ELEMENT"

    return-object v0

    .line 115
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 116
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 117
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 118
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    const-string v0, "USSD_MODIFIED_TO_DIAL"

    return-object v0

    .line 119
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    const-string v0, "USSD_MODIFIED_TO_SS"

    return-object v0

    .line 120
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    const-string v0, "USSD_MODIFIED_TO_USSD"

    return-object v0

    .line 121
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    const-string v0, "SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 122
    :cond_a6
    const/16 v0, 0x19

    if-ne p0, v0, :cond_ad

    const-string v0, "SS_MODIFIED_TO_USSD"

    return-object v0

    .line 123
    :cond_ad
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b4

    const-string v0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object v0

    .line 124
    :cond_b4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_bb

    const-string v0, "SS_MODIFIED_TO_SS"

    return-object v0

    .line 125
    :cond_bb
    const/16 v0, 0x24

    if-ne p0, v0, :cond_c2

    const-string v0, "LCE_NOT_SUPPORTED"

    return-object v0

    .line 126
    :cond_c2
    const/16 v0, 0x25

    if-ne p0, v0, :cond_c9

    const-string v0, "NO_MEMORY"

    return-object v0

    .line 127
    :cond_c9
    const/16 v0, 0x26

    if-ne p0, v0, :cond_d0

    const-string v0, "INTERNAL_ERR"

    return-object v0

    .line 128
    :cond_d0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_d7

    const-string v0, "SYSTEM_ERR"

    return-object v0

    .line 129
    :cond_d7
    const/16 v0, 0x28

    if-ne p0, v0, :cond_de

    const-string v0, "MODEM_ERR"

    return-object v0

    .line 130
    :cond_de
    const/16 v0, 0x29

    if-ne p0, v0, :cond_e5

    const-string v0, "INVALID_STATE"

    return-object v0

    .line 131
    :cond_e5
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_ec

    const-string v0, "NO_RESOURCES"

    return-object v0

    .line 132
    :cond_ec
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_f3

    const-string v0, "SIM_ERR"

    return-object v0

    .line 133
    :cond_f3
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_fa

    const-string v0, "INVALID_ARGUMENTS"

    return-object v0

    .line 134
    :cond_fa
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_101

    const-string v0, "INVALID_SIM_STATE"

    return-object v0

    .line 135
    :cond_101
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_108

    const-string v0, "INVALID_MODEM_STATE"

    return-object v0

    .line 136
    :cond_108
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_10f

    const-string v0, "INVALID_CALL_ID"

    return-object v0

    .line 137
    :cond_10f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_116

    const-string v0, "NO_SMS_TO_ACK"

    return-object v0

    .line 138
    :cond_116
    const/16 v0, 0x31

    if-ne p0, v0, :cond_11d

    const-string v0, "NETWORK_ERR"

    return-object v0

    .line 139
    :cond_11d
    const/16 v0, 0x32

    if-ne p0, v0, :cond_124

    const-string v0, "REQUEST_RATE_LIMITED"

    return-object v0

    .line 140
    :cond_124
    const/16 v0, 0x33

    if-ne p0, v0, :cond_12b

    const-string v0, "SIM_BUSY"

    return-object v0

    .line 141
    :cond_12b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_132

    const-string v0, "SIM_FULL"

    return-object v0

    .line 142
    :cond_132
    const/16 v0, 0x35

    if-ne p0, v0, :cond_139

    const-string v0, "NETWORK_REJECT"

    return-object v0

    .line 143
    :cond_139
    const/16 v0, 0x36

    if-ne p0, v0, :cond_140

    const-string v0, "OPERATION_NOT_ALLOWED"

    return-object v0

    .line 144
    :cond_140
    const/16 v0, 0x37

    if-ne p0, v0, :cond_147

    const-string v0, "EMPTY_RECORD"

    return-object v0

    .line 145
    :cond_147
    const/16 v0, 0x38

    if-ne p0, v0, :cond_14e

    const-string v0, "INVALID_SMS_FORMAT"

    return-object v0

    .line 146
    :cond_14e
    const/16 v0, 0x39

    if-ne p0, v0, :cond_155

    const-string v0, "ENCODING_ERR"

    return-object v0

    .line 147
    :cond_155
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_15c

    const-string v0, "INVALID_SMSC_ADDRESS"

    return-object v0

    .line 148
    :cond_15c
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_163

    const-string v0, "NO_SUCH_ENTRY"

    return-object v0

    .line 149
    :cond_163
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_16a

    const-string v0, "NETWORK_NOT_READY"

    return-object v0

    .line 150
    :cond_16a
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_171

    const-string v0, "NOT_PROVISIONED"

    return-object v0

    .line 151
    :cond_171
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_178

    const-string v0, "NO_SUBSCRIPTION"

    return-object v0

    .line 152
    :cond_178
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_17f

    const-string v0, "NO_NETWORK_FOUND"

    return-object v0

    .line 153
    :cond_17f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_186

    const-string v0, "DEVICE_IN_USE"

    return-object v0

    .line 154
    :cond_186
    const/16 v0, 0x41

    if-ne p0, v0, :cond_18d

    const-string v0, "ABORTED"

    return-object v0

    .line 155
    :cond_18d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_194

    const-string v0, "INVALID_RESPONSE"

    return-object v0

    .line 156
    :cond_194
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_19b

    const-string v0, "OEM_ERROR_1"

    return-object v0

    .line 157
    :cond_19b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_1a2

    const-string v0, "OEM_ERROR_2"

    return-object v0

    .line 158
    :cond_1a2
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_1a9

    const-string v0, "OEM_ERROR_3"

    return-object v0

    .line 159
    :cond_1a9
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_1b0

    const-string v0, "OEM_ERROR_4"

    return-object v0

    .line 160
    :cond_1b0
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_1b7

    const-string v0, "OEM_ERROR_5"

    return-object v0

    .line 161
    :cond_1b7
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_1be

    const-string v0, "OEM_ERROR_6"

    return-object v0

    .line 162
    :cond_1be
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_1c5

    const-string v0, "OEM_ERROR_7"

    return-object v0

    .line 163
    :cond_1c5
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_1cc

    const-string v0, "OEM_ERROR_8"

    return-object v0

    .line 164
    :cond_1cc
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_1d3

    const-string v0, "OEM_ERROR_9"

    return-object v0

    .line 165
    :cond_1d3
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_1da

    const-string v0, "OEM_ERROR_10"

    return-object v0

    .line 166
    :cond_1da
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_1e1

    const-string v0, "OEM_ERROR_11"

    return-object v0

    .line 167
    :cond_1e1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_1e8

    const-string v0, "OEM_ERROR_12"

    return-object v0

    .line 168
    :cond_1e8
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1ef

    const-string v0, "OEM_ERROR_13"

    return-object v0

    .line 169
    :cond_1ef
    const/16 v0, 0x202

    if-ne p0, v0, :cond_1f6

    const-string v0, "OEM_ERROR_14"

    return-object v0

    .line 170
    :cond_1f6
    const/16 v0, 0x203

    if-ne p0, v0, :cond_1fd

    const-string v0, "OEM_ERROR_15"

    return-object v0

    .line 171
    :cond_1fd
    const/16 v0, 0x204

    if-ne p0, v0, :cond_204

    const-string v0, "OEM_ERROR_16"

    return-object v0

    .line 172
    :cond_204
    const/16 v0, 0x205

    if-ne p0, v0, :cond_20b

    const-string v0, "OEM_ERROR_17"

    return-object v0

    .line 173
    :cond_20b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_212

    const-string v0, "OEM_ERROR_18"

    return-object v0

    .line 174
    :cond_212
    const/16 v0, 0x207

    if-ne p0, v0, :cond_219

    const-string v0, "OEM_ERROR_19"

    return-object v0

    .line 175
    :cond_219
    const/16 v0, 0x208

    if-ne p0, v0, :cond_220

    const-string v0, "OEM_ERROR_20"

    return-object v0

    .line 176
    :cond_220
    const/16 v0, 0x209

    if-ne p0, v0, :cond_227

    const-string v0, "OEM_ERROR_21"

    return-object v0

    .line 177
    :cond_227
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_22e

    const-string v0, "OEM_ERROR_22"

    return-object v0

    .line 178
    :cond_22e
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_235

    const-string v0, "OEM_ERROR_23"

    return-object v0

    .line 179
    :cond_235
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_23c

    const-string v0, "OEM_ERROR_24"

    return-object v0

    .line 180
    :cond_23c
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_243

    const-string v0, "OEM_ERROR_25"

    return-object v0

    .line 181
    :cond_243
    const/16 v0, 0x43

    if-ne p0, v0, :cond_24a

    const-string v0, "SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED"

    return-object v0

    .line 182
    :cond_24a
    const/16 v0, 0x44

    if-ne p0, v0, :cond_251

    const-string v0, "ACCESS_BARRED"

    return-object v0

    .line 183
    :cond_251
    const/16 v0, 0x45

    if-ne p0, v0, :cond_258

    const-string v0, "BLOCKED_DUE_TO_CALL"

    return-object v0

    .line 184
    :cond_258
    const/16 v0, 0x46

    if-ne p0, v0, :cond_25f

    const-string v0, "RF_HARDWARE_ISSUE"

    return-object v0

    .line 185
    :cond_25f
    const/16 v0, 0x47

    if-ne p0, v0, :cond_266

    const-string v0, "NO_RF_CALIBRATION_INFO"

    return-object v0

    .line 186
    :cond_266
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
