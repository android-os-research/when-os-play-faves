.class public Lcom/android/server/spay/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_SUI_ABORT_MSG:Ljava/lang/String; = "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

.field public static final QC_TUISERVICE_PROCESS_NAME:Ljava/lang/String; = "com.qualcomm.qti.services.secureui"

.field public static final SPAYAPP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spay"

.field public static final SPAYFW_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spayfw"

.field public static final SPAYGEAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.samsungpay.gear"

.field public static final SPAYID_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rajaampat"

.field public static final SPAYMINI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spaymini"

.field public static final TAG:Ljava/lang/String; = "com.android.server.spay.Utils"

.field public static mRegisteredUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, p1, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundWhitelist called, fromInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.spay.Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_103

    const-string v2, "com.samsung.android.spay"

    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.samsung.android.rajaampat"

    if-nez v3, :cond_43

    const-string v3, "com.samsung.android.spayfw"

    .line 114
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "com.samsung.android.spaymini"

    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "com.samsung.android.samsungpay.gear"

    .line 116
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 117
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_103

    .line 121
    :cond_43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {p0, p1}, Lcom/android/server/spay/Utils;->hasValidSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 122
    :cond_4f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-static {p0, p1}, Lcom/android/server/spay/Utils;->hasValidSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 123
    :cond_5b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backgroundWhitelist: bad signature: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 128
    :cond_70
    :try_start_70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7e} :catch_e6

    const/16 v2, 0x3e8

    const-string v3, ", uidString: "

    if-lt p0, v2, :cond_cb

    if-nez p1, :cond_87

    goto :goto_cb

    .line 135
    :cond_87
    :try_start_87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegisteredUid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v2, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b7

    const-string/jumbo p0, "uid already added"

    .line 137
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 141
    :cond_b7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 142
    invoke-interface {v2, p0}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    if-nez p2, :cond_c5

    .line 144
    sget-object p0, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    const-string p0, "call backgroundWhitelistUid done"

    .line 146
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 131
    :cond_cb
    :goto_cb
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backgroundWhitelist: bad uid: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_e5} :catch_e6

    return v0

    :catch_e6
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backgroundWhitelistUid exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 118
    :cond_103
    :goto_103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backgroundWhitelist: bad packageName: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .registers 4

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 94
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 95
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 96
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_23

    .line 98
    :cond_1e
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 103
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static hasValidSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "com.android.server.spay.Utils"

    const/4 v1, 0x0

    .line 166
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    .line 167
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v4, "android"

    .line 168
    invoke-virtual {p0, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 170
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v1

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasValidSignature, VALID : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_35} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_35} :catch_37

    const/4 p0, 0x1

    return p0

    :catch_37
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasValidSignature, exception "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v1
.end method

.method public static readFile(Ljava/lang/String;)[B
    .registers 8

    const-string v0, "Error closing InputStream"

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In readFile - Path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.android.server.spay.Utils"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 42
    :try_start_1e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_60
    .catchall {:try_start_1e .. :try_end_23} :catchall_5c

    .line 43
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Read - Length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v4, v1, [B
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_42} :catch_59
    .catchall {:try_start_23 .. :try_end_42} :catchall_72

    .line 46
    :try_start_42
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v1, :cond_4e

    const-string v1, "File Read Failed"

    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4d} :catch_57
    .catchall {:try_start_42 .. :try_end_4d} :catchall_72

    goto :goto_4f

    :cond_4e
    move-object p0, v4

    .line 55
    :goto_4f
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_71

    .line 58
    :catch_53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :catch_57
    move-exception p0

    goto :goto_64

    :catch_59
    move-exception v1

    move-object v4, p0

    goto :goto_63

    :catchall_5c
    move-exception v1

    move-object v3, p0

    move-object p0, v1

    goto :goto_73

    :catch_60
    move-exception v1

    move-object v3, p0

    move-object v4, v3

    :goto_63
    move-object p0, v1

    .line 51
    :goto_64
    :try_start_64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_72

    if-eqz v3, :cond_70

    .line 55
    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_70

    .line 58
    :catch_6d
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    move-object p0, v4

    :goto_71
    return-object p0

    :catchall_72
    move-exception p0

    :goto_73
    if-eqz v3, :cond_7c

    .line 55
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7c

    .line 58
    :catch_79
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_7c
    :goto_7c
    throw p0
.end method

.method public static sendSecureUIAbortIntent(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.android.server.spay.Utils"

    const-string/jumbo v1, "sendSecureUIAbortIntent"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.services.secureui"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static writeFile([BLjava/lang/String;)Z
    .registers 6

    const-string v0, "Error closing OutputStream"

    const-string v1, "com.android.server.spay.Utils"

    .line 69
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 72
    :try_start_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_38
    .catchall {:try_start_a .. :try_end_f} :catchall_36

    .line 73
    :try_start_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Write - Length = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_33
    .catchall {:try_start_f .. :try_end_27} :catchall_30

    const/4 p0, 0x1

    .line 81
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_46

    .line 84
    :catch_2c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :catchall_30
    move-exception p0

    move-object p1, v3

    goto :goto_47

    :catch_33
    move-exception p0

    move-object p1, v3

    goto :goto_39

    :catchall_36
    move-exception p0

    goto :goto_47

    :catch_38
    move-exception p0

    .line 77
    :goto_39
    :try_start_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    if-eqz p1, :cond_45

    .line 81
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_45

    .line 84
    :catch_42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    const/4 p0, 0x0

    :goto_46
    return p0

    :goto_47
    if-eqz p1, :cond_50

    .line 81
    :try_start_49
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_50

    .line 84
    :catch_4d
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_50
    :goto_50
    throw p0
.end method
