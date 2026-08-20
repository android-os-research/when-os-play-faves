.class public Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverScpmManager.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "r8namobmbc"

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final FAST_DRAIN_POLICY_ENABLE:I = 0x1

.field public static final FAST_DRAIN_POLICY_ITEM:Ljava/lang/String; = "fast_drain_policy"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final GOOGLE_APP_POLICY_ENABLE:I = 0x2

.field public static final GOOGLE_APP_POLICY_ITEM:Ljava/lang/String; = "google_app_policy"

.field public static final IBS_PREFS:Ljava/lang/String; = "ibs_prefs"

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final SCPM_URI_V2_STR:Ljava/lang/String; = "content://com.samsung.android.scpm.policy/"

.field public static final TAG:Ljava/lang/String; = "IntelligentBatterySaverScpmManager"

.field public static final VERSION:Ljava/lang/String; = "1.0.0"

.field public static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;


# instance fields
.field public final SCPM_URI_V2:Landroid/net/Uri;

.field public mContext:Landroid/content/Context;

.field public mPolicyControlSwitch:I

.field public mPref:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->SCPM_URI_V2:Landroid/net/Uri;

    const/4 v0, 0x3

    .line 37
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 41
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
    .registers 3

    const-class v0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    if-nez v1, :cond_e

    .line 46
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 48
    :cond_e
    sget-object p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p2, ""

    .line 248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "IntelligentBatterySaverScpmManager adapt to scpm v2 "

    .line 249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IBS \'s mPolicyControlSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCachedToken()Ljava/lang/String;
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ibs_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCPMToken - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "SCPMToken"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentBatterySaverScpmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getData()V
    .registers 8

    const-string v0, "IntelligentBatterySaverScpmManager"

    const-string v1, "getData"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 120
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getCachedToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ibs"

    const/4 v3, 0x0

    .line 124
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.samsung.android.scpm.policy/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_32} :catch_64
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_59

    .line 125
    :try_start_32
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_54} :catch_57
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_54} :catch_55

    goto :goto_6e

    :catch_55
    move-exception v4

    goto :goto_5b

    :catch_57
    move-exception v4

    goto :goto_66

    :catch_59
    move-exception v4

    move-object v2, v3

    :goto_5b
    const-string v5, "Open file fail!"

    .line 131
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    :catch_64
    move-exception v4

    move-object v2, v3

    :goto_66
    const-string v5, "File not found!"

    .line 128
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 135
    :goto_6e
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "token"

    .line 136
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android"

    if-nez v3, :cond_b4

    .line 141
    :try_start_7d
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "getLastError"

    invoke-virtual {p0, v2, v5, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "rcode"

    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "rmsg"

    .line 143
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get new policy : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 146
    :cond_b4
    iget-object v5, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "getStatus"

    invoke-virtual {v5, v2, v6, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filterId"

    .line 147
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "policy filterId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->parseData(Landroid/os/ParcelFileDescriptor;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_df} :catch_e7
    .catchall {:try_start_7d .. :try_end_df} :catchall_e5

    :goto_df
    if-eqz v3, :cond_106

    .line 158
    :try_start_e1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_f6

    goto :goto_106

    :catchall_e5
    move-exception p0

    goto :goto_fb

    :catch_e7
    move-exception p0

    :try_start_e8
    const-string v1, "getData fail because of exception!"

    .line 153
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f0
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_e5

    if-eqz v3, :cond_106

    .line 158
    :try_start_f2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_106

    :catch_f6
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_106

    :goto_fb
    if-eqz v3, :cond_105

    .line 158
    :try_start_fd
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_105

    :catch_101
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    :cond_105
    :goto_105
    throw p0

    :cond_106
    :goto_106
    return-void
.end method

.method public final getScpmFeatures(Ljava/lang/String;)I
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ibs_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    const/4 p0, 0x1

    .line 61
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final isAvailable()Z
    .registers 3

    .line 110
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.scpm.policy"

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isGoogleAppPolicyDisabled()Z
    .registers 1

    .line 244
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final parseData(Landroid/os/ParcelFileDescriptor;)V
    .registers 10

    const-string/jumbo v0, "google_app_policy"

    const-string v1, "fast_drain_policy"

    const-string v2, "IntelligentBatterySaverScpmManager"

    const-string/jumbo v3, "parseData"

    .line 168
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 172
    :try_start_e
    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_89
    .catchall {:try_start_e .. :try_end_17} :catchall_86

    .line 173
    :try_start_17
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_84
    .catchall {:try_start_17 .. :try_end_1c} :catchall_b8

    .line 174
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    :goto_21
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 180
    :cond_2b
    new-instance v5, Lorg/json/JSONTokener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 182
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 183
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFastDrainPolicy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mGoogleAppPolicy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_66

    .line 187
    invoke-virtual {p0, v1, v6}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(Ljava/lang/String;I)V

    goto :goto_69

    .line 189
    :cond_66
    invoke-virtual {p0, v1, v7}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(Ljava/lang/String;I)V

    :goto_69
    if-eqz v3, :cond_6f

    .line 193
    invoke-virtual {p0, v0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(Ljava/lang/String;I)V

    goto :goto_72

    .line 195
    :cond_6f
    invoke-virtual {p0, v0, v7}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_72} :catch_81
    .catchall {:try_start_1c .. :try_end_72} :catchall_7e

    .line 203
    :goto_72
    :try_start_72
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :goto_7a
    :try_start_7a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_b3

    goto :goto_b7

    :catchall_7e
    move-exception p0

    move-object v3, p1

    goto :goto_b9

    :catch_81
    move-exception p0

    move-object v3, p1

    goto :goto_8b

    :catch_84
    move-exception p0

    goto :goto_8b

    :catchall_86
    move-exception p0

    move-object v4, v3

    goto :goto_b9

    :catch_89
    move-exception p0

    move-object v4, v3

    .line 199
    :goto_8b
    :try_start_8b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_b8

    if-eqz v3, :cond_ad

    .line 203
    :try_start_a5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ad
    :goto_ad
    if-eqz v4, :cond_b7

    .line 211
    :try_start_af
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b7
    :goto_b7
    return-void

    :catchall_b8
    move-exception p0

    :goto_b9
    if-eqz v3, :cond_c3

    .line 203
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c3

    :catch_bf
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c3
    :goto_c3
    if-eqz v4, :cond_cd

    .line 211
    :try_start_c5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cd

    :catch_c9
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :cond_cd
    :goto_cd
    throw p0
.end method

.method public registerScpm()V
    .registers 9

    const-string v0, "android"

    const-string v1, "IntelligentBatterySaverScpmManager"

    const-string/jumbo v2, "registerScpm"

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 82
    :try_start_10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    .line 83
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appId"

    const-string/jumbo v4, "r8namobmbc"

    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "version"

    const-string v4, "1.0.0"

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "receiverPackageName"

    .line 86
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->SCPM_URI_V2:Landroid/net/Uri;

    const-string/jumbo v5, "register"

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9f

    const-string/jumbo v2, "result"

    const/4 v3, 0x1

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "token"

    const/4 v5, 0x0

    .line 92
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "rcode"

    const/4 v6, -0x1

    .line 93
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "rmsg"

    const-string v7, ""

    .line 94
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v2, v3, :cond_69

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveCachedToken(Ljava/lang/String;)V

    goto :goto_9f

    .line 99
    :cond_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to register: rcode = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rmsg = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_85} :catch_86

    goto :goto_9f

    :catch_86
    move-exception p0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot register package : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final saveCachedToken(Ljava/lang/String;)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ibs_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "SCPMToken"

    .line 67
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveScpmFeatures(Ljava/lang/String;I)V
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ibs_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 54
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSCPMParametersFromDB(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 5

    const-string v0, "IntelligentBatterySaverScpmManager"

    const-string/jumbo v1, "updateSCPMParametersFromDB"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getData()V

    const-string v1, "fast_drain_policy"

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getScpmFeatures(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    const-string v1, "Enable fast drain policy!"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 226
    invoke-virtual {p1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    goto :goto_31

    :cond_22
    const-string v1, "Disable fast drain policy!"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    :goto_31
    const-string/jumbo p1, "google_app_policy"

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getScpmFeatures(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_46

    const-string p1, "Enable google app policy!"

    .line 234
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    goto :goto_51

    :cond_46
    const-string p1, "Disable google app policy!"

    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    :goto_51
    return-void
.end method
