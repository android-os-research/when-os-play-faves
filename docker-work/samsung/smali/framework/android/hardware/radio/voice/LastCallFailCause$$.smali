.class public interface abstract Landroid/hardware/radio/voice/LastCallFailCause$$;
.super Ljava/lang/Object;
.source "LastCallFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/LastCallFailCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 203
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 204
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 205
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 206
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 207
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 208
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 209
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 210
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/voice/LastCallFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 213
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 214
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 215
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/voice/LastCallFailCause$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 214
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 218
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 213
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

    .line 205
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

    .line 104
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 105
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    const-string v0, "NO_ROUTE_TO_DESTINATION"

    return-object v0

    .line 106
    :cond_c
    const/4 v0, 0x6

    if-ne p0, v0, :cond_12

    const-string v0, "CHANNEL_UNACCEPTABLE"

    return-object v0

    .line 107
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string v0, "OPERATOR_DETERMINED_BARRING"

    return-object v0

    .line 108
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string v0, "NORMAL"

    return-object v0

    .line 109
    :cond_20
    const/16 v0, 0x11

    if-ne p0, v0, :cond_27

    const-string v0, "BUSY"

    return-object v0

    .line 110
    :cond_27
    const/16 v0, 0x12

    if-ne p0, v0, :cond_2e

    const-string v0, "NO_USER_RESPONDING"

    return-object v0

    .line 111
    :cond_2e
    const/16 v0, 0x13

    if-ne p0, v0, :cond_35

    const-string v0, "NO_ANSWER_FROM_USER"

    return-object v0

    .line 112
    :cond_35
    const/16 v0, 0x15

    if-ne p0, v0, :cond_3c

    const-string v0, "CALL_REJECTED"

    return-object v0

    .line 113
    :cond_3c
    const/16 v0, 0x16

    if-ne p0, v0, :cond_43

    const-string v0, "NUMBER_CHANGED"

    return-object v0

    .line 114
    :cond_43
    const/16 v0, 0x19

    if-ne p0, v0, :cond_4a

    const-string v0, "PREEMPTION"

    return-object v0

    .line 115
    :cond_4a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_51

    const-string v0, "DESTINATION_OUT_OF_ORDER"

    return-object v0

    .line 116
    :cond_51
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_58

    const-string v0, "INVALID_NUMBER_FORMAT"

    return-object v0

    .line 117
    :cond_58
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_5f

    const-string v0, "FACILITY_REJECTED"

    return-object v0

    .line 118
    :cond_5f
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_66

    const-string v0, "RESP_TO_STATUS_ENQUIRY"

    return-object v0

    .line 119
    :cond_66
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_6d

    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    .line 120
    :cond_6d
    const/16 v0, 0x22

    if-ne p0, v0, :cond_74

    const-string v0, "CONGESTION"

    return-object v0

    .line 121
    :cond_74
    const/16 v0, 0x26

    if-ne p0, v0, :cond_7b

    const-string v0, "NETWORK_OUT_OF_ORDER"

    return-object v0

    .line 122
    :cond_7b
    const/16 v0, 0x29

    if-ne p0, v0, :cond_82

    const-string v0, "TEMPORARY_FAILURE"

    return-object v0

    .line 123
    :cond_82
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_89

    const-string v0, "SWITCHING_EQUIPMENT_CONGESTION"

    return-object v0

    .line 124
    :cond_89
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_90

    const-string v0, "ACCESS_INFORMATION_DISCARDED"

    return-object v0

    .line 125
    :cond_90
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_97

    const-string v0, "REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE"

    return-object v0

    .line 126
    :cond_97
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_9e

    const-string v0, "RESOURCES_UNAVAILABLE_OR_UNSPECIFIED"

    return-object v0

    .line 127
    :cond_9e
    const/16 v0, 0x31

    if-ne p0, v0, :cond_a5

    const-string v0, "QOS_UNAVAILABLE"

    return-object v0

    .line 128
    :cond_a5
    const/16 v0, 0x32

    if-ne p0, v0, :cond_ac

    const-string v0, "REQUESTED_FACILITY_NOT_SUBSCRIBED"

    return-object v0

    .line 129
    :cond_ac
    const/16 v0, 0x37

    if-ne p0, v0, :cond_b3

    const-string v0, "INCOMING_CALLS_BARRED_WITHIN_CUG"

    return-object v0

    .line 130
    :cond_b3
    const/16 v0, 0x39

    if-ne p0, v0, :cond_ba

    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    return-object v0

    .line 131
    :cond_ba
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_c1

    const-string v0, "BEARER_CAPABILITY_UNAVAILABLE"

    return-object v0

    .line 132
    :cond_c1
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_c8

    const-string v0, "SERVICE_OPTION_NOT_AVAILABLE"

    return-object v0

    .line 133
    :cond_c8
    const/16 v0, 0x41

    if-ne p0, v0, :cond_cf

    const-string v0, "BEARER_SERVICE_NOT_IMPLEMENTED"

    return-object v0

    .line 134
    :cond_cf
    const/16 v0, 0x44

    if-ne p0, v0, :cond_d6

    const-string v0, "ACM_LIMIT_EXCEEDED"

    return-object v0

    .line 135
    :cond_d6
    const/16 v0, 0x45

    if-ne p0, v0, :cond_dd

    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    return-object v0

    .line 136
    :cond_dd
    const/16 v0, 0x46

    if-ne p0, v0, :cond_e4

    const-string v0, "ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE"

    return-object v0

    .line 137
    :cond_e4
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_eb

    const-string v0, "SERVICE_OR_OPTION_NOT_IMPLEMENTED"

    return-object v0

    .line 138
    :cond_eb
    const/16 v0, 0x51

    if-ne p0, v0, :cond_f2

    const-string v0, "INVALID_TRANSACTION_IDENTIFIER"

    return-object v0

    .line 139
    :cond_f2
    const/16 v0, 0x57

    if-ne p0, v0, :cond_f9

    const-string v0, "USER_NOT_MEMBER_OF_CUG"

    return-object v0

    .line 140
    :cond_f9
    const/16 v0, 0x58

    if-ne p0, v0, :cond_100

    const-string v0, "INCOMPATIBLE_DESTINATION"

    return-object v0

    .line 141
    :cond_100
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_107

    const-string v0, "INVALID_TRANSIT_NW_SELECTION"

    return-object v0

    .line 142
    :cond_107
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_10e

    const-string v0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object v0

    .line 143
    :cond_10e
    const/16 v0, 0x60

    if-ne p0, v0, :cond_115

    const-string v0, "INVALID_MANDATORY_INFORMATION"

    return-object v0

    .line 144
    :cond_115
    const/16 v0, 0x61

    if-ne p0, v0, :cond_11c

    const-string v0, "MESSAGE_TYPE_NON_IMPLEMENTED"

    return-object v0

    .line 145
    :cond_11c
    const/16 v0, 0x62

    if-ne p0, v0, :cond_123

    const-string v0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    .line 146
    :cond_123
    const/16 v0, 0x63

    if-ne p0, v0, :cond_12a

    const-string v0, "INFORMATION_ELEMENT_NON_EXISTENT"

    return-object v0

    .line 147
    :cond_12a
    const/16 v0, 0x64

    if-ne p0, v0, :cond_131

    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    .line 148
    :cond_131
    const/16 v0, 0x65

    if-ne p0, v0, :cond_138

    const-string v0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    .line 149
    :cond_138
    const/16 v0, 0x66

    if-ne p0, v0, :cond_13f

    const-string v0, "RECOVERY_ON_TIMER_EXPIRED"

    return-object v0

    .line 150
    :cond_13f
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_146

    const-string v0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object v0

    .line 151
    :cond_146
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_14d

    const-string v0, "INTERWORKING_UNSPECIFIED"

    return-object v0

    .line 152
    :cond_14d
    const/16 v0, 0xf0

    if-ne p0, v0, :cond_154

    const-string v0, "CALL_BARRED"

    return-object v0

    .line 153
    :cond_154
    const/16 v0, 0xf1

    if-ne p0, v0, :cond_15b

    const-string v0, "FDN_BLOCKED"

    return-object v0

    .line 154
    :cond_15b
    const/16 v0, 0xf2

    if-ne p0, v0, :cond_162

    const-string v0, "IMSI_UNKNOWN_IN_VLR"

    return-object v0

    .line 155
    :cond_162
    const/16 v0, 0xf3

    if-ne p0, v0, :cond_169

    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 156
    :cond_169
    const/16 v0, 0xf4

    if-ne p0, v0, :cond_170

    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 157
    :cond_170
    const/16 v0, 0xf5

    if-ne p0, v0, :cond_177

    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 158
    :cond_177
    const/16 v0, 0xf6

    if-ne p0, v0, :cond_17e

    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 159
    :cond_17e
    const/16 v0, 0xf7

    if-ne p0, v0, :cond_185

    const-string v0, "RADIO_OFF"

    return-object v0

    .line 160
    :cond_185
    const/16 v0, 0xf8

    if-ne p0, v0, :cond_18c

    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 161
    :cond_18c
    const/16 v0, 0xf9

    if-ne p0, v0, :cond_193

    const-string v0, "NO_VALID_SIM"

    return-object v0

    .line 162
    :cond_193
    const/16 v0, 0xfa

    if-ne p0, v0, :cond_19a

    const-string v0, "RADIO_INTERNAL_ERROR"

    return-object v0

    .line 163
    :cond_19a
    const/16 v0, 0xfb

    if-ne p0, v0, :cond_1a1

    const-string v0, "NETWORK_RESP_TIMEOUT"

    return-object v0

    .line 164
    :cond_1a1
    const/16 v0, 0xfc

    if-ne p0, v0, :cond_1a8

    const-string v0, "NETWORK_REJECT"

    return-object v0

    .line 165
    :cond_1a8
    const/16 v0, 0xfd

    if-ne p0, v0, :cond_1af

    const-string v0, "RADIO_ACCESS_FAILURE"

    return-object v0

    .line 166
    :cond_1af
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_1b6

    const-string v0, "RADIO_LINK_FAILURE"

    return-object v0

    .line 167
    :cond_1b6
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1bd

    const-string v0, "RADIO_LINK_LOST"

    return-object v0

    .line 168
    :cond_1bd
    const/16 v0, 0x100

    if-ne p0, v0, :cond_1c4

    const-string v0, "RADIO_UPLINK_FAILURE"

    return-object v0

    .line 169
    :cond_1c4
    const/16 v0, 0x101

    if-ne p0, v0, :cond_1cb

    const-string v0, "RADIO_SETUP_FAILURE"

    return-object v0

    .line 170
    :cond_1cb
    const/16 v0, 0x102

    if-ne p0, v0, :cond_1d2

    const-string v0, "RADIO_RELEASE_NORMAL"

    return-object v0

    .line 171
    :cond_1d2
    const/16 v0, 0x103

    if-ne p0, v0, :cond_1d9

    const-string v0, "RADIO_RELEASE_ABNORMAL"

    return-object v0

    .line 172
    :cond_1d9
    const/16 v0, 0x104

    if-ne p0, v0, :cond_1e0

    const-string v0, "ACCESS_CLASS_BLOCKED"

    return-object v0

    .line 173
    :cond_1e0
    const/16 v0, 0x105

    if-ne p0, v0, :cond_1e7

    const-string v0, "NETWORK_DETACH"

    return-object v0

    .line 174
    :cond_1e7
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1ee

    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 175
    :cond_1ee
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1f5

    const-string v0, "CDMA_DROP"

    return-object v0

    .line 176
    :cond_1f5
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_1fc

    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 177
    :cond_1fc
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_203

    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 178
    :cond_203
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_20a

    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    .line 179
    :cond_20a
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_211

    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 180
    :cond_211
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_218

    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 181
    :cond_218
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_21f

    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    .line 182
    :cond_21f
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_226

    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 183
    :cond_226
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_22d

    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 184
    :cond_22d
    const v0, 0xf001

    if-ne p0, v0, :cond_235

    const-string v0, "OEM_CAUSE_1"

    return-object v0

    .line 185
    :cond_235
    const v0, 0xf002

    if-ne p0, v0, :cond_23d

    const-string v0, "OEM_CAUSE_2"

    return-object v0

    .line 186
    :cond_23d
    const v0, 0xf003

    if-ne p0, v0, :cond_245

    const-string v0, "OEM_CAUSE_3"

    return-object v0

    .line 187
    :cond_245
    const v0, 0xf004

    if-ne p0, v0, :cond_24d

    const-string v0, "OEM_CAUSE_4"

    return-object v0

    .line 188
    :cond_24d
    const v0, 0xf005

    if-ne p0, v0, :cond_255

    const-string v0, "OEM_CAUSE_5"

    return-object v0

    .line 189
    :cond_255
    const v0, 0xf006

    if-ne p0, v0, :cond_25d

    const-string v0, "OEM_CAUSE_6"

    return-object v0

    .line 190
    :cond_25d
    const v0, 0xf007

    if-ne p0, v0, :cond_265

    const-string v0, "OEM_CAUSE_7"

    return-object v0

    .line 191
    :cond_265
    const v0, 0xf008

    if-ne p0, v0, :cond_26d

    const-string v0, "OEM_CAUSE_8"

    return-object v0

    .line 192
    :cond_26d
    const v0, 0xf009

    if-ne p0, v0, :cond_275

    const-string v0, "OEM_CAUSE_9"

    return-object v0

    .line 193
    :cond_275
    const v0, 0xf00a

    if-ne p0, v0, :cond_27d

    const-string v0, "OEM_CAUSE_10"

    return-object v0

    .line 194
    :cond_27d
    const v0, 0xf00b

    if-ne p0, v0, :cond_285

    const-string v0, "OEM_CAUSE_11"

    return-object v0

    .line 195
    :cond_285
    const v0, 0xf00c

    if-ne p0, v0, :cond_28d

    const-string v0, "OEM_CAUSE_12"

    return-object v0

    .line 196
    :cond_28d
    const v0, 0xf00d

    if-ne p0, v0, :cond_295

    const-string v0, "OEM_CAUSE_13"

    return-object v0

    .line 197
    :cond_295
    const v0, 0xf00e

    if-ne p0, v0, :cond_29d

    const-string v0, "OEM_CAUSE_14"

    return-object v0

    .line 198
    :cond_29d
    const v0, 0xf00f

    if-ne p0, v0, :cond_2a5

    const-string v0, "OEM_CAUSE_15"

    return-object v0

    .line 199
    :cond_2a5
    const v0, 0xffff

    if-ne p0, v0, :cond_2ad

    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 200
    :cond_2ad
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
