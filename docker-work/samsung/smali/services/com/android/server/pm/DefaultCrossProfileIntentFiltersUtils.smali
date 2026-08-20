.class public Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFiltersUtils.java"


# static fields
.field public static final ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ENHANCED_4GLTE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 42
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    .line 47
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.intent.category.DEFAULT"

    .line 49
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.category.BROWSABLE"

    .line 50
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v7, "vnd.android.cursor.item/phone"

    .line 51
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v8, "vnd.android.cursor.item/phone_v2"

    .line 52
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v9, "vnd.android.cursor.item/person"

    .line 53
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v10, "vnd.android.cursor.dir/calls"

    .line 54
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v11, "vnd.android.cursor.item/calls"

    .line 55
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 60
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v3, "tel"

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v4, "sip"

    .line 70
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v12, "voicemail"

    .line 71
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 75
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v13, 0x4

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v14, "android.intent.action.DIAL"

    .line 80
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v15, "android.intent.action.VIEW"

    .line 81
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 92
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 97
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 110
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 115
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 121
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_BUTTON"

    .line 126
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 131
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 136
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.action.SENDTO"

    .line 137
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v3, "sms"

    .line 140
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v3, "smsto"

    .line 141
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v3, "mms"

    .line 142
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v3, "mmsto"

    .line 143
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 148
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    .line 153
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 154
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 159
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.MAIN"

    .line 164
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.category.HOME"

    .line 166
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 170
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.GET_CONTENT"

    .line 175
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.intent.category.OPENABLE"

    .line 177
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "*/*"

    .line 178
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 182
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v7, "android.provider.action.PICK_IMAGES"

    .line 187
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 191
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 196
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v7, "image/*"

    .line 198
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v7, "video/*"

    .line 199
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 203
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v7, "android.intent.action.OPEN_DOCUMENT"

    .line 208
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 215
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.PICK"

    .line 220
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 226
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 231
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 236
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    .line 241
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 246
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    .line 251
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 252
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    .line 253
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    .line 254
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    .line 255
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 256
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.media.action.VIDEO_CAMERA"

    .line 257
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 262
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.SET_ALARM"

    .line 267
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.intent.action.SHOW_ALARMS"

    .line 268
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.intent.action.SET_TIMER"

    .line 269
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 276
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v3, v1, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.SEND"

    .line 281
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 282
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 289
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v3, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 294
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 295
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 299
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v1, "com.samsung.phone.action.LAUNCH_MOBILE_NETWORK_SETTING_ACTIVITY"

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v1, "com.samsung.phone.action.LAUNCH_ENHANCED_LTE_SETTING_ACTIVITY"

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ENHANCED_4GLTE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultManagedProfileFilters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 309
    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ENHANCED_4GLTE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
