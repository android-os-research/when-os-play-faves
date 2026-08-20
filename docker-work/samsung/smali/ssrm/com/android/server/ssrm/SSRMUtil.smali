.class public Lcom/android/server/ssrm/SSRMUtil;
.super Ljava/lang/Object;
.source "SSRMUtil.java"


# static fields
.field public static final DEBUG:Z

.field static mIsFactoryMode:Z

.field private static final sCountry:Ljava/lang/String;

.field private static final sRegion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    .line 47
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SSRMUtil;->sCountry:Ljava/lang/String;

    .line 50
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SSRMUtil;->sRegion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPidFromProcessName(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "pid":I
    :try_start_1
    const-string v1, "activity"

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 243
    .local v1, "activityManager":Landroid/app/ActivityManager;
    if-eqz v1, :cond_2f

    .line 244
    nop

    .line 245
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 246
    .local v2, "appProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_2f

    .line 247
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 248
    .local v4, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 249
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_30

    move v0, v3

    .line 250
    goto :goto_2f

    .line 252
    .end local v4    # "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2e
    goto :goto_16

    .line 257
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "appProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2f
    :goto_2f
    goto :goto_34

    .line 255
    :catch_30
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    return v0
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v0, "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_d

    .line 194
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 196
    :cond_d
    return-object v0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSRM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSRM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1a
    return-void
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 67
    const-string v0, "e = "

    if-nez p1, :cond_6

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_6
    const/4 v1, 0x0

    .line 72
    .local v1, "strTemp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 74
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 75
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSysfs:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_38} :catch_59
    .catchall {:try_start_8 .. :try_end_38} :catchall_57

    .line 81
    nop

    .line 82
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 86
    :cond_3c
    :goto_3c
    goto :goto_7f

    .line 84
    :catch_3d
    move-exception v3

    .line 85
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7f

    .line 80
    :catchall_57
    move-exception v3

    goto :goto_80

    .line 77
    :catch_59
    move-exception v3

    .line 78
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_57

    .line 81
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3c

    .line 82
    :try_start_74
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_3c

    .line 84
    :catch_78
    move-exception v3

    .line 85
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_43

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7f
    return-object v1

    .line 81
    :goto_80
    if-eqz v2, :cond_a0

    .line 82
    :try_start_82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_a0

    .line 84
    :catch_86
    move-exception v4

    .line 85
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 86
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a0
    :goto_a0
    nop

    .line 87
    :goto_a1
    throw v3
.end method

.method public static readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 92
    const-string v0, "e = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 96
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 97
    :goto_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "buf":Ljava/lang/String;
    if-eqz v3, :cond_23

    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_44
    .catchall {:try_start_8 .. :try_end_22} :catchall_42

    goto :goto_13

    .line 105
    :cond_23
    nop

    .line 106
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    .line 110
    goto :goto_7e

    .line 108
    :catch_28
    move-exception v3

    .line 109
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7e

    .line 104
    .end local v4    # "buf":Ljava/lang/String;
    :catchall_42
    move-exception v3

    goto :goto_a7

    .line 101
    :catch_44
    move-exception v3

    .line 102
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_42

    .line 105
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7d

    .line 106
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_7d

    .line 108
    :catch_63
    move-exception v3

    .line 109
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7e

    .line 110
    :cond_7d
    :goto_7d
    nop

    .line 112
    :goto_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readSysfsMultipleLines:: path = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :goto_a7
    if-eqz v2, :cond_c7

    .line 106
    :try_start_a9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_c7

    .line 108
    :catch_ad
    move-exception v4

    .line 109
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c7
    :goto_c7
    nop

    .line 111
    :goto_c8
    throw v3
.end method

.method public static setFactoryMode(Z)V
    .registers 1
    .param p0, "isFactoryMode"    # Z

    .line 53
    sput-boolean p0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    .line 54
    return-void
.end method

.method private static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 225
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1c

    .line 227
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/android/server/ssrm/SSRMUtil;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_27

    .line 230
    :cond_1c
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_27

    .line 231
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/android/server/ssrm/SSRMUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 233
    :cond_27
    :goto_27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 235
    .end local v1    # "i":I
    :cond_2d
    return-object v0
.end method

.method private static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 200
    if-nez p0, :cond_4

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_29

    .line 211
    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/android/server/ssrm/SSRMUtil;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    goto :goto_34

    .line 214
    :cond_29
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_34

    .line 215
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/android/server/ssrm/SSRMUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 217
    :cond_34
    :goto_34
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_d

    .line 219
    :cond_38
    return-object v0
.end method

.method public static writeSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public static writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    return-void
.end method

.method public static writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "log"    # Z

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-boolean v1, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v1, :cond_1d

    .line 127
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 128
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 129
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 128
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 132
    :cond_1d
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    if-eqz v1, :cond_25

    .line 135
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 137
    :cond_25
    return-void
.end method

.method private static writeSysfsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "log"    # Z

    .line 140
    const-string v0, "e = "

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_be

    if-nez p2, :cond_17

    goto/16 :goto_be

    .line 148
    :cond_17
    if-eqz p3, :cond_39

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSysfs:: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_39
    const/4 v2, 0x0

    .line 154
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_3a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 155
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_70
    .catchall {:try_start_3a .. :try_end_4c} :catchall_6e

    .line 162
    nop

    .line 164
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    .line 169
    :cond_50
    :goto_50
    goto/16 :goto_bd

    .line 165
    :catch_52
    move-exception v3

    .line 166
    .local v3, "e":Ljava/io/IOException;
    if-eqz p3, :cond_50

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_6e
    move-exception v3

    goto :goto_8c

    .line 157
    :catch_70
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/io/IOException;
    if-eqz p3, :cond_ae

    .line 159
    :try_start_73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_6e

    goto :goto_ae

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :goto_8c
    if-eqz v2, :cond_ad

    .line 164
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    .line 169
    goto :goto_ad

    .line 165
    :catch_92
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    if-eqz p3, :cond_ad

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ad
    :goto_ad
    throw v3

    .line 162
    :cond_ae
    :goto_ae
    if-eqz v2, :cond_bd

    .line 164
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_50

    .line 165
    :catch_b4
    move-exception v3

    .line 166
    .restart local v3    # "e":Ljava/io/IOException;
    if-eqz p3, :cond_50

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5a

    .line 172
    .end local v3    # "e":Ljava/io/IOException;
    :cond_bd
    :goto_bd
    return-void

    .line 142
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_be
    :goto_be
    if-eqz p3, :cond_f2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSysfs:: path() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exist() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " canWrite() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_f2
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # [I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 177
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 179
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static x(Ljava/lang/String;)[I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 184
    .local v0, "e":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/lit8 v2, v2, 0x7a

    aput v2, v0, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 187
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method
