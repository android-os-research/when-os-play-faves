.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "BiometricUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 119
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticatorStatusToBiometricConstant(I)I
    .registers 1

    packed-switch p0, :pswitch_data_1c

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/16 p0, 0x12

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_d
    const/16 p0, 0xe

    return p0

    :pswitch_10
    const/16 p0, 0xb

    return p0

    :pswitch_13
    const/16 p0, 0xf

    return p0

    :pswitch_16
    const/16 p0, 0xc

    return p0

    :pswitch_19
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_3
        :pswitch_16
        :pswitch_13
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_d
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static authenticatorStrengthToPropertyStrength(I)I
    .registers 4
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    const/16 v0, 0xf

    if-eq p0, v0, :cond_26

    const/16 v0, 0xff

    if-eq p0, v0, :cond_24

    const/16 v0, 0xfff

    const/4 v1, 0x0

    if-eq p0, v0, :cond_23

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticatorStrengthToPropertyStrength: Unknown strength "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return v1

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x2

    return p0
.end method

.method public static biometricConstantsToBiometricManager(I)I
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0xf

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz p0, :cond_3f

    if-eq p0, v4, :cond_3e

    const/4 v5, 0x7

    if-eq p0, v5, :cond_3f

    const/16 v5, 0x9

    if-eq p0, v5, :cond_3f

    const/16 v0, 0x12

    if-eq p0, v0, :cond_3e

    if-eq p0, v3, :cond_3c

    if-eq p0, v2, :cond_3a

    const/16 v0, 0xe

    if-eq p0, v0, :cond_3c

    if-eq p0, v1, :cond_38

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_38
    move v0, v1

    goto :goto_3f

    :cond_3a
    move v0, v2

    goto :goto_3f

    :cond_3c
    move v0, v3

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v0, v4

    :cond_3f
    :goto_3f
    return v0
.end method

.method public static byteArrayToString([BI)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_11

    .line 1105
    array-length v0, p0

    if-lt v0, p1, :cond_11

    .line 1106
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static combineAuthenticatorBundles(Landroid/hardware/biometrics/PromptInfo;)V
    .registers 3

    .line 145
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    if-eqz v1, :cond_13

    .line 151
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    goto :goto_1b

    :cond_13
    if-eqz v0, :cond_19

    const v0, 0x80ff

    goto :goto_1b

    :cond_19
    const/16 v0, 0xff

    .line 159
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    return-void
.end method

.method public static containsFlag(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static getAuthenticationTypeForResult(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_21

    const/4 v1, 0x7

    if-ne p0, v1, :cond_a

    return v0

    .line 364
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dismissal reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 p0, 0x2

    return p0
.end method

.method public static getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_b
    const-string/jumbo p0, "null"

    :goto_e
    return-object p0
.end method

.method public static getCurrentStrength(I)I
    .registers 3
    .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    .end annotation

    const-string v0, "biometric"

    .line 473
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 475
    :try_start_a
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    const-string v0, "BiometricUtils"

    const-string v1, "RemoteException"

    .line 477
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getFloatDb(Landroid/content/Context;Ljava/lang/String;ZF)F
    .registers 5

    .line 965
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    if-eqz p2, :cond_c

    .line 968
    :try_start_7
    invoke-static {p0, p1, p3, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    goto :goto_10

    .line 970
    :cond_c
    invoke-static {p0, p1, p3, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    :goto_10
    move p3, p0

    goto :goto_2d

    :catch_12
    move-exception p0

    .line 973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIntDb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return p3
.end method

.method public static getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I
    .registers 5

    const/4 v0, -0x2

    .line 927
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public static getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I
    .registers 5

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_b

    .line 936
    :try_start_6
    invoke-static {p0, p1, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_f

    .line 938
    :cond_b
    invoke-static {p0, p1, p3, p4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_11

    :goto_f
    move p3, p0

    goto :goto_2c

    :catch_11
    move-exception p0

    .line 941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIntDb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return p3
.end method

.method public static getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 1222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getJSONObject: No file, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1227
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1231
    :try_start_28
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_56
    .catchall {:try_start_28 .. :try_end_2d} :catchall_53

    .line 1232
    :try_start_2d
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_50
    .catchall {:try_start_2d .. :try_end_32} :catchall_4e

    .line 1233
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_36
    if-eqz v3, :cond_40

    .line 1234
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_4c
    .catchall {:try_start_32 .. :try_end_3f} :catchall_80

    goto :goto_36

    .line 1242
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1249
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_6c

    goto :goto_70

    :catch_4c
    move-exception v3

    goto :goto_59

    :catchall_4e
    move-exception p0

    goto :goto_82

    :catch_50
    move-exception v3

    move-object v0, v2

    goto :goto_59

    :catchall_53
    move-exception p0

    move-object v1, v2

    goto :goto_82

    :catch_56
    move-exception v3

    move-object v0, v2

    move-object v1, v0

    .line 1238
    :goto_59
    :try_start_59
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_80

    if-eqz v0, :cond_66

    .line 1242
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_66
    :goto_66
    if-eqz v1, :cond_70

    .line 1249
    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception v0

    .line 1251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1256
    :cond_70
    :goto_70
    :try_start_70
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_79} :catch_7b

    move-object v2, v0

    goto :goto_7f

    :catch_7b
    move-exception p0

    .line 1258
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7f
    return-object v2

    :catchall_80
    move-exception p0

    move-object v2, v0

    :goto_82
    if-eqz v2, :cond_8c

    .line 1242
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8c
    :goto_8c
    if-eqz v1, :cond_96

    .line 1249
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception v0

    .line 1251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1254
    :cond_96
    :goto_96
    throw p0
.end method

.method public static getLogFormat(Landroid/os/Message;)Ljava/lang/String;
    .registers 7

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_49

    const-string v2, ", { when="

    .line 1087
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1089
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    const-string p0, " }"

    .line 1092
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)J
    .registers 6

    .line 949
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_b

    .line 952
    :try_start_6
    invoke-static {p0, p1, p3, p4, p5}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    goto :goto_f

    .line 954
    :cond_b
    invoke-static {p0, p1, p3, p4, p5}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_11

    :goto_f
    move-wide p3, p0

    goto :goto_2c

    :catch_11
    move-exception p0

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIntDb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-wide p3
.end method

.method public static getPublicBiometricStrength(I)I
    .registers 1
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I
    .registers 1

    .line 198
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result p0

    return p0
.end method

.method public static getSensorConfiguration()[Ljava/lang/String;
    .registers 4

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    if-eqz v1, :cond_e

    const-string v1, "0:2:15"

    .line 1071
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    :cond_e
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v1, :cond_15

    const/16 v1, 0xfff

    goto :goto_17

    :cond_15
    const/16 v1, 0xff

    .line 1076
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1:8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1078
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getUserOrWorkProfileId(Landroid/content/Context;I)I
    .registers 8

    .line 1007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1009
    :try_start_4
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isWorkProfile(Landroid/content/Context;I)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a4

    if-eqz v2, :cond_e

    .line 1048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 1012
    :cond_e
    :try_start_e
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_a4

    const-string v3, "BiometricUtils"

    if-nez v2, :cond_1f

    :try_start_16
    const-string p0, "Unable to acquire UserManager"

    .line 1014
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_a4

    .line 1048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 1017
    :cond_1f
    :try_start_1f
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 1019
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to acquire UserInfo: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_a4

    .line 1048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 1030
    :cond_3d
    :try_start_3d
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 1031
    iget p0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppSeparation, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_5a
    move p0, p1

    .line 1035
    :goto_5b
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DualAppId, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1039
    iget p0, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1042
    :cond_7d
    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    if-eq p1, p0, :cond_a0

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserOrWorkProfileId: change userId,  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_3d .. :try_end_a0} :catchall_a4

    .line 1048
    :cond_a0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_a4
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    throw p0
.end method

.method public static hasInternalPermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 522
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 980
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static inMultiWindowMode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1199
    :cond_4
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "BiometricUtils"

    if-eqz v0, :cond_5e

    .line 1200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_5e

    .line 1205
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_1c

    .line 1206
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    goto :goto_1c

    .line 1209
    :cond_2f
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1210
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1211
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "inMultiWindowMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :cond_5d
    return p0

    :cond_5e
    :goto_5e
    const-string/jumbo p1, "inMultiWindowMode: No running tasks reported"

    .line 1201
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isAtLeastStrength(II)Z
    .registers 5
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    and-int/lit16 p0, p0, 0x7fff

    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    move v2, v0

    :goto_a
    if-gt v2, p1, :cond_13

    if-ne v2, p0, :cond_f

    return v0

    :cond_f
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v0

    goto :goto_a

    .line 244
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensorStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", requestedStrength: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isAutoTime(Landroid/content/Context;)Z
    .registers 3

    .line 1099
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isBackground(Ljava/lang/String;)Z
    .registers 8

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking if the authenticating is in background, clientPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_73

    .line 619
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_73

    .line 624
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 625
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2f

    .line 627
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 628
    invoke-virtual {v4, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_51

    const/4 p0, 0x0

    return p0

    .line 631
    :cond_51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running task, top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isVisible: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_72
    return v2

    :cond_73
    :goto_73
    const-string p0, "No running tasks reported"

    .line 620
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isBiometricRequested(I)Z
    .registers 1
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 208
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 1

    .line 219
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isConfirmationSupported(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/16 v0, 0x8

    if-eq p0, v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public static isCredentialRequested(I)Z
    .registers 2
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 1

    .line 176
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result p0

    return p0
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .registers 8

    .line 432
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "BiometricUtils"

    const-string p1, "Unable to get UserManager"

    .line 434
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 438
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 441
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0

    array-length v3, p0

    move v4, v0

    :goto_1d
    if-ge v4, v3, :cond_2b

    aget v5, p0, v4
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_2f

    if-ne v5, p1, :cond_28

    .line 447
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_2f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    throw p0
.end method

.method public static isCutoutNotchHidden(Landroid/content/Context;)Z
    .registers 3

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_cutout_hide_notch"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .registers 4

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    return v0

    .line 127
    :cond_6
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_f

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_f

    return v0

    .line 131
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "biometric_debug_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1c

    return v0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static isDexMode(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isFactoryBinary()Z
    .registers 2

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, ""

    .line 811
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstApiLevel31orGreater()Z
    .registers 2

    .line 1318
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isFlipFolded(Landroid/content/Context;)Z
    .registers 3

    .line 1129
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "input"

    .line 1132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 1133
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p0

    if-ne p0, v0, :cond_19

    move v1, v0

    :cond_19
    return v1
.end method

.method public static isFlipOpened(Landroid/content/Context;)Z
    .registers 3

    .line 1118
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "input"

    .line 1121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 1122
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p0

    if-eq p0, v0, :cond_19

    move v1, v0

    :cond_19
    return v1
.end method

.method public static isFolderFolded(Landroid/content/Context;)Z
    .registers 3

    .line 1147
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "input"

    .line 1150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 1151
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p0

    if-ne p0, v0, :cond_19

    move v1, v0

    :cond_19
    return v1
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .registers 3

    .line 1138
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "input"

    .line 1141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 1142
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p0

    if-eq p0, v0, :cond_19

    move v1, v0

    :cond_19
    return v1
.end method

.method public static isForeground(II)Z
    .registers 9

    const-string v0, "BiometricUtils"

    const/4 v1, 0x0

    .line 546
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_14

    const-string p0, "No running app processes found, defaulting to true"

    .line 548
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_14
    move v4, v1

    .line 552
    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 553
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 554
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_30

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, p0, :cond_30

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2b} :catch_33

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_30

    return v3

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :catch_33
    const-string p0, "am.getRunningAppProcesses() failed"

    .line 560
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return v1
.end method

.method public static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 490
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040360

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 494
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-eqz v0, :cond_27

    if-eqz p0, :cond_27

    .line 495
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public static isKnoxInternal(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isKnoxOnlyConfirmBiometric(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isKnoxTwoFactor(Landroid/content/Context;I)Z
    .registers 5

    const-string/jumbo v0, "knox_finger_print_plus"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1328
    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result p0

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    return v1
.end method

.method public static isOneHandMode(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "any_screen_running"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 859
    invoke-static {p0, v0, v1, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    move v1, v0

    :cond_c
    return v1
.end method

.method public static isRuneStoneApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1290
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string p0, "com.android.vending"

    .line 1294
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_12

    return v1

    :cond_12
    const-string p0, "com.samsung.android.spay"

    .line 1296
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    const-string p0, "com.paypal.android.p2pmobile"

    .line 1298
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const-string p0, "com.squareup.cash"

    .line 1300
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return v1

    :cond_2d
    const-string p0, "com.venmo"

    .line 1302
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_36
    const-string p0, "com.zellepay.zell"

    .line 1304
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    return v1

    :cond_3f
    return v0
.end method

.method public static isSamsungMembersApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1312
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "com.samsung.android.voc"

    .line 1313
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 518
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "com.android.settings"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z
    .registers 8

    const-string v0, "display"

    .line 866
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 867
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 870
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    const-string/jumbo v4, "media_router"

    .line 873
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    const/4 v5, 0x4

    .line 874
    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 876
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_5a

    .line 877
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5a

    .line 878
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->semGetStatusCode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5a

    .line 879
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v5

    if-nez v5, :cond_58

    .line 880
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5a

    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    :cond_58
    move v4, v2

    goto :goto_5b

    :cond_5a
    move v4, v3

    .line 883
    :goto_5b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v5, "lelink_cast_on"

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_6a

    move p0, v2

    goto :goto_6b

    :cond_6a
    move p0, v3

    :goto_6b
    if-nez v1, :cond_71

    if-nez v4, :cond_71

    if-eqz p0, :cond_78

    .line 886
    :cond_71
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result p0

    if-eqz p0, :cond_78

    return v2

    :cond_78
    return v3
.end method

.method public static isStrongBiometric(I)Z
    .registers 3

    const-string v0, "biometric"

    .line 455
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 457
    :try_start_a
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result p0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    const-string v0, "BiometricUtils"

    const-string v1, "RemoteException"

    .line 460
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 507
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    .line 1113
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "accessibility"

    .line 847
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_12

    .line 848
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isTopActivity(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 11

    .line 1156
    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b3

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto/16 :goto_b3

    :cond_f
    const/4 p0, 0x0

    if-nez p2, :cond_13

    return p0

    .line 1163
    :cond_13
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "BiometricUtils"

    if-eqz v0, :cond_ac

    .line 1164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    goto/16 :goto_ac

    .line 1169
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_2c

    .line 1170
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_3f

    goto :goto_2c

    .line 1173
    :cond_3f
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1174
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v5, :cond_6c

    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "task : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_6c
    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_73

    return v1

    .line 1181
    :cond_73
    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v5, p1, :cond_2c

    .line 1182
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "task: split screen mode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1186
    :cond_97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Background authentication detected, top: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return p0

    :cond_ac
    :goto_ac
    const-string/jumbo p1, "isTopActivity: No running tasks reported"

    .line 1165
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_b3
    :goto_b3
    return v1
.end method

.method public static isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 6

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    const/4 p1, 0x1

    .line 536
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v0

    const/4 v1, 0x2

    .line 537
    invoke-static {p0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const/16 v1, 0x20

    .line 538
    invoke-static {p0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    move p0, v2

    goto :goto_1d

    :cond_1c
    :goto_1c
    move p0, p1

    .line 539
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEncrypted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLockdown: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BiometricUtils"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_42

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    move p1, v2

    :cond_42
    :goto_42
    return p1
.end method

.method public static isValidAuthenticatorConfig(I)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    const/4 v2, 0x0

    const-string v3, "BiometricService"

    if-eqz v1, :cond_21

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    and-int/lit16 v1, p0, 0x7fff

    if-nez v1, :cond_2c

    .line 284
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    return v0

    :cond_2c
    const/16 v4, 0xf

    if-ne v1, v4, :cond_31

    return v0

    :cond_31
    const/16 v4, 0xff

    if-ne v1, v4, :cond_36

    return v0

    .line 292
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isValidAuthenticatorConfig(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 1

    .line 255
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    .line 256
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result p0

    return p0
.end method

.method public static isWorkProfile(Landroid/content/Context;I)Z
    .registers 4

    .line 1054
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->useOwnerBiometrics(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1057
    :cond_8
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1059
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 1060
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    const-string p0, "BiometricUtils"

    const-string/jumbo p1, "isWorkProfile: Unable to acquire UserManager"

    .line 1062
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static listContains([II)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 418
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 419
    aget v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static oemStrengthToAuthenticatorStrength(I)I
    .registers 4
    .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    const/16 v1, 0xfff

    if-eq p0, v0, :cond_22

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oemStrengthToAuthenticatorStrength: Unknown security level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v1

    :cond_23
    const/16 p0, 0xff

    return p0

    :cond_26
    const/16 p0, 0xf

    return p0
.end method

.method public static oemStrengthToPropertyStrength(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_22

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_21

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oemStrengthToPropertyStrength: Unknown security level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v1

    :cond_22
    return v0
.end method

.method public static omeBiometricAuthenticatorModalityToOemSysUiType(I)I
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p0, v0, :cond_33

    const/4 v0, 0x2

    if-eq p0, v0, :cond_36

    const/4 v0, 0x4

    if-eq p0, v0, :cond_30

    if-eq p0, v1, :cond_2d

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2a

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "omeBiometricAuthenticatorModalityToOemSysUiType: Unknown modality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_36

    :cond_2a
    const/16 v1, 0x4000

    goto :goto_36

    :cond_2d
    const/16 v1, 0x1000

    goto :goto_36

    :cond_30
    const/16 v1, 0x2000

    goto :goto_36

    :cond_33
    const v1, 0x8000

    :cond_36
    :goto_36
    return v1
.end method

.method public static propertyStrengthToAuthenticatorStrength(I)I
    .registers 4
    .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    .end annotation

    const/16 v0, 0xfff

    if-eqz p0, :cond_28

    const/4 v1, 0x1

    if-eq p0, v1, :cond_25

    const/4 v1, 0x2

    if-eq p0, v1, :cond_22

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "propertyStrengthToAuthenticatorStrength: Unknown strength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricUtils"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_22
    const/16 p0, 0xf

    return p0

    :cond_25
    const/16 p0, 0xff

    return p0

    :cond_28
    return v0
.end method

.method public static propertyStrengthToOemStrength(I)I
    .registers 4

    const/4 v0, 0x3

    if-eqz p0, :cond_23

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_22

    if-eq p0, v1, :cond_21

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "propertyStrengthToOemStrength: Unknown security level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricUtils"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_21
    return v2

    :cond_22
    return v1

    :cond_23
    return v0
.end method

.method public static putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V
    .registers 5

    const/4 v0, -0x2

    .line 894
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V
    .registers 5

    .line 899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 902
    :try_start_6
    invoke-static {p0, p1, p3, p4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2a

    .line 904
    :cond_a
    invoke-static {p0, p1, p3, p4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_2a

    :catch_e
    move-exception p0

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "putIntDb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public static putLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)V
    .registers 6

    .line 913
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 916
    :try_start_6
    invoke-static {p0, p1, p3, p4, p5}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    goto :goto_2a

    .line 918
    :cond_a
    invoke-static {p0, p1, p3, p4, p5}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_2a

    :catch_e
    move-exception p0

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "putIntDb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public static readFile(Ljava/io/File;)[B
    .registers 8

    const-string v0, "failed to close file"

    const/4 v1, 0x0

    const-string v2, "BiometricUtils"

    if-eqz p0, :cond_6e

    .line 762
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_6e

    .line 769
    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_3d
    .catchall {:try_start_f .. :try_end_14} :catchall_3b

    .line 770
    :try_start_14
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p0, v4

    new-array v1, p0, [B

    .line 771
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_36
    .catchall {:try_start_14 .. :try_end_1f} :catchall_33

    if-lez p0, :cond_2a

    .line 779
    :try_start_21
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p0

    .line 782
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-object v1

    .line 779
    :cond_2a
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_62

    :catch_2e
    move-exception p0

    .line 782
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    :catchall_33
    move-exception p0

    move-object v1, v3

    goto :goto_63

    :catch_36
    move-exception p0

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_3f

    :catchall_3b
    move-exception p0

    goto :goto_63

    :catch_3d
    move-exception p0

    move-object v3, v1

    .line 775
    :goto_3f
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failure to read file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_3b

    if-eqz v1, :cond_61

    .line 779
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 782
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_61
    :goto_61
    move-object v1, v3

    :goto_62
    return-object v1

    :goto_63
    if-eqz v1, :cond_6d

    .line 779
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v1

    .line 782
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    :cond_6d
    :goto_6d
    throw p0

    .line 763
    :cond_6e
    :goto_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file info, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    .line 819
    :try_start_6
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception p0

    const-string p1, "BiometricUtils"

    const-string/jumbo p2, "registerBroadcast: failed to set receiver"

    .line 821
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public static registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .line 829
    :try_start_6
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception p0

    const-string p1, "BiometricUtils"

    const-string/jumbo p2, "registerBroadcast: failed to set receiver"

    .line 831
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public static removeBiometricBits(I)I
    .registers 1
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    and-int/lit16 p0, p0, -0x8000

    return p0
.end method

.method public static semVibrate(Landroid/content/Context;I)V
    .registers 5

    .line 1265
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-string v0, "BiometricUtils"

    if-nez p0, :cond_13

    const-string/jumbo p0, "semVibrate: No vibrator service"

    .line 1267
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1270
    :cond_13
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 1271
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    if-ne v1, v2, :cond_24

    const/16 v1, 0x71

    if-ne p1, v1, :cond_24

    const/16 p1, 0x64

    .line 1276
    :cond_24
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    if-lt v1, v2, :cond_39

    .line 1277
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const/4 v0, -0x1

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p1, v0, v1}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 1279
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_56

    .line 1281
    :cond_39
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_56

    .line 1282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semVibrate: supported type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1282
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    return-void
.end method

.method public static sepBiometricPromptTypeToBiometricAuthenticatorModality(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x8

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_19

    or-int/lit16 v0, v0, 0x100

    :cond_19
    return v0
.end method

.method public static unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 838
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_20

    :catch_4
    move-exception p0

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unregisterBroadcast: failed to set receiver"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method public static useOwnerBiometrics(Landroid/content/Context;I)Z
    .registers 4

    .line 993
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result p0

    const/4 v0, 0x1

    const-string v1, "BiometricUtils"

    if-eqz p0, :cond_10

    const-string/jumbo p0, "useOwnerBiometrics: AppSeparation profile!"

    .line 994
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 998
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string/jumbo p0, "useOwnerBiometrics: DualApp profile!"

    .line 999
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static writeFile(Ljava/io/File;[B)Z
    .registers 4

    const/4 v0, 0x0

    .line 792
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_16
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    .line 793
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_11
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 800
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    return p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_25

    :catch_11
    move-exception p0

    move-object v0, v1

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_25

    :catch_16
    move-exception p0

    :goto_17
    :try_start_17
    const-string p1, "BiometricUtils"

    const-string v1, "failed to write file"

    .line 796
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_14

    if-eqz v0, :cond_23

    .line 800
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    const/4 p0, 0x0

    return p0

    :goto_25
    if-eqz v0, :cond_2a

    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2a

    .line 805
    :catch_2a
    :cond_2a
    throw p0
.end method
