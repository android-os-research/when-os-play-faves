.class public Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsChain.java"


# static fields
.field public static MANAGED_DB_UID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsChain"

.field public static UNMANAGED_DB_UID:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    .line 48
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p3, "com.android.settings"

    .line 51
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b9

    const-string p2, "ApplicationRestrictionsChain"

    const-string/jumbo p3, "packageName: com.android.settings"

    .line 52
    invoke-static {p2, p3}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget p3, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;->MANAGED_DB_UID:I

    const-string v0, "KNOX_NDA"

    const-string/jumbo v1, "startActivity"

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    if-nez p3, :cond_2d

    .line 56
    sget p3, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;->UNMANAGED_DB_UID:I

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    .line 58
    :cond_2d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_48

    .line 60
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 61
    array-length v0, p3

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p3

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    move-object p1, p3

    :cond_48
    if-eqz p1, :cond_1b9

    .line 68
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1b9

    const-string/jumbo p3, "startActivityInfo"

    .line 69
    invoke-static {p2, p3}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_76
    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3f7

    const-string v7, "SEM_KEYCODE_USER/KEY_PRESS_LONG"

    const/4 v8, 0x4

    const-string/jumbo v9, "value"

    const-string/jumbo v10, "grayout"

    const/4 v11, 0x1

    if-ne v5, v6, :cond_db

    const-string v5, "SEM_KEYCODE_USER"

    .line 76
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v11, :cond_c1

    const-string v5, "SEM_KEYCODE_USER/KEY_PRESS_DOWN"

    .line 78
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 81
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "short_press_key"

    .line 83
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    :cond_c1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_db

    .line 86
    invoke-static {p2, v7}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 89
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "long_press_key"

    .line 91
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    :cond_db
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_120

    const-string v5, "KEYCODE_EMERGENCY"

    .line 96
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v11, :cond_104

    const-string v5, "KEYCODE_EMERGENCY/KEY_PRESS_DOWN"

    .line 98
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 101
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "xcover_top_short_press_key"

    .line 103
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    :cond_104
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_120

    const-string v5, "KEYCODE_EMERGENCY/KEY_PRESS_LONG"

    .line 107
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 110
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "xcover_top_long_press_key"

    .line 112
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    :cond_120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_76

    const-string v5, "KEYCODE_POWER"

    .line 116
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_185

    const-string v5, "SEM_KEYCODE_USER/KEY_PRESS_DOUBLE"

    .line 118
    invoke-static {p2, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 121
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "1"

    .line 122
    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "function_key_double_press"

    .line 123
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "2"

    .line 126
    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "function_key_double_press_type"

    .line 127
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 130
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "double_press_quick_launch_camera"

    .line 131
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 134
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "double_press_open_bixby"

    .line 135
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 138
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "double_press_open_apps"

    .line 140
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    :cond_185
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_76

    .line 143
    invoke-static {p2, v7}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "function_key_long_press"

    .line 147
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 150
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "long_press_wake_bixby"

    .line 151
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 154
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "long_press_power_off"

    .line 155
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_76

    :cond_1b9
    return-object p0
.end method
