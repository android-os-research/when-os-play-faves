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

.field private static final TAG:Ljava/lang/String; = "com.android.server.spay.Utils"

.field private static mRegisteredUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromInit"    # Z

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundWhitelist called, fromInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.spay.Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "uid":I
    const/4 v2, 0x0

    if-eqz p1, :cond_112

    const-string v3, "com.samsung.android.spay"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "com.samsung.android.rajaampat"

    if-nez v4, :cond_46

    .line 114
    const-string v4, "com.samsung.android.spayfw"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 115
    const-string v4, "com.samsung.android.spaymini"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 116
    const-string v4, "com.samsung.android.samsungpay.gear"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 117
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto/16 :goto_112

    .line 121
    :cond_46
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-static {p0, p1}, Lcom/android/server/spay/Utils;->hasValidSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 122
    :cond_52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-static {p0, p1}, Lcom/android/server/spay/Utils;->hasValidSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 123
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backgroundWhitelist: bad signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v2

    .line 128
    :cond_75
    :try_start_75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v3

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_f3

    .line 130
    .local v3, "uidString":Ljava/lang/String;
    const/16 v4, 0x3e8

    const-string v5, ", uidString: "

    if-lt v0, v4, :cond_d4

    if-nez v3, :cond_8d

    goto :goto_d4

    .line 135
    :cond_8d
    :try_start_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRegisteredUid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v4, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c0

    .line 137
    const-string v4, "uid already added"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v5

    .line 141
    :cond_c0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 142
    .local v4, "am":Landroid/app/IActivityManager;
    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    .line 143
    if-nez p2, :cond_ce

    .line 144
    sget-object v6, Lcom/android/server/spay/Utils;->mRegisteredUid:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_ce
    const-string v6, "call backgroundWhitelistUid done"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v5

    .line 131
    .end local v4    # "am":Landroid/app/IActivityManager;
    :cond_d4
    :goto_d4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backgroundWhitelist: bad uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_f2} :catch_f3

    .line 132
    return v2

    .line 148
    .end local v3    # "uidString":Ljava/lang/String;
    :catch_f3
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backgroundWhitelistUid exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    return v2

    .line 118
    :cond_112
    :goto_112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backgroundWhitelist: bad packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v2
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .registers 4
    .param p0, "path"    # Ljava/io/File;

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_26

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
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

    .line 94
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 103
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static hasValidSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    const-string v0, "com.android.server.spay.Utils"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 167
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 168
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    const-string v5, "android"

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 170
    .local v3, "sys":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v1

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasValidSignature, VALID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_37} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_37} :catch_3a

    .line 172
    const/4 v0, 0x1

    return v0

    .line 176
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "sys":Landroid/content/pm/PackageInfo;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_39
    goto :goto_55

    .line 174
    :catch_3a
    move-exception v2

    .line 175
    .local v2, "nfe":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasValidSignature, exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v2    # "nfe":Ljava/lang/Exception;
    :goto_55
    return v1
.end method

.method protected static readFile(Ljava/lang/String;)[B
    .registers 10
    .param p0, "filepath"    # Ljava/lang/String;

    .line 35
    const-string v0, "Error closing InputStream"

    const/4 v1, 0x0

    .line 36
    .local v1, "fileContent":[B
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 38
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v4, -0x1

    .line 39
    .local v4, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In readFile - Path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.server.spay.Utils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_22
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Read - Length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v5, v5, [B

    move-object v1, v5

    .line 46
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v4, v5

    array-length v7, v1

    if-eq v5, v7, :cond_58

    .line 47
    const-string v5, "File Read Failed"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_57} :catch_64
    .catchall {:try_start_22 .. :try_end_57} :catchall_62

    .line 48
    const/4 v1, 0x0

    .line 54
    :cond_58
    nop

    .line 55
    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 59
    :cond_5c
    :goto_5c
    goto :goto_6e

    .line 57
    :catch_5d
    move-exception v5

    .line 58
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_6e

    .line 53
    :catchall_62
    move-exception v5

    goto :goto_6f

    .line 50
    :catch_64
    move-exception v5

    .line 51
    .local v5, "e":Ljava/lang/Exception;
    :try_start_65
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    .line 54
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5c

    .line 55
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_5d

    goto :goto_5c

    .line 62
    :goto_6e
    return-object v1

    .line 54
    :goto_6f
    if-eqz v3, :cond_7a

    .line 55
    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_7a

    .line 57
    :catch_75
    move-exception v7

    .line 58
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 59
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7a
    :goto_7a
    nop

    .line 60
    :goto_7b
    throw v5
.end method

.method public static sendSecureUIAbortIntent(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    const-string v0, "com.android.server.spay.Utils"

    const-string v1, "sendSecureUIAbortIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "com.qualcomm.qti.services.secureui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 161
    const/4 v1, 0x1

    return v1
.end method

.method public static writeFile([BLjava/lang/String;)Z
    .registers 9
    .param p0, "fileContent"    # [B
    .param p1, "filePath"    # Ljava/lang/String;

    .line 67
    const-string v0, "Error closing OutputStream"

    const-string v1, "com.android.server.spay.Utils"

    const/4 v2, 0x0

    .line 68
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 69
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "file":Ljava/io/File;
    :try_start_b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File Write - Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_38
    .catchall {:try_start_b .. :try_end_2b} :catchall_36

    .line 75
    const/4 v2, 0x1

    .line 80
    nop

    .line 81
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 85
    :cond_30
    :goto_30
    goto :goto_42

    .line 83
    :catch_31
    move-exception v5

    .line 84
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_42

    .line 79
    :catchall_36
    move-exception v5

    goto :goto_43

    .line 76
    :catch_38
    move-exception v5

    .line 77
    .local v5, "e":Ljava/lang/Exception;
    :try_start_39
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .line 80
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_30

    .line 81
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_31

    goto :goto_30

    .line 87
    :goto_42
    return v2

    .line 80
    :goto_43
    if-eqz v3, :cond_4e

    .line 81
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4e

    .line 83
    :catch_49
    move-exception v6

    .line 84
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 85
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4e
    :goto_4e
    nop

    .line 86
    :goto_4f
    throw v5
.end method
