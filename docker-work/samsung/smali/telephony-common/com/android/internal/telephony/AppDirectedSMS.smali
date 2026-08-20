.class public final enum Lcom/android/internal/telephony/AppDirectedSMS;
.super Ljava/lang/Enum;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;,
        Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/AppDirectedSMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

.field public static final enum blacklist INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;


# instance fields
.field private blacklist mcontext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/android/internal/telephony/AppDirectedSMS;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/telephony/AppDirectedSMS;

    aput-object v0, v1, v2

    .line 24
    sput-object v1, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist findAppDirectedSMSPackage(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
    .registers 11

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "//VZW"

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x5

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "AppDirectedSMS"

    if-eqz v0, :cond_85

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_32

    goto :goto_85

    .line 214
    :cond_32
    new-instance v5, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;-><init>(Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo-IA;)V

    .line 215
    :goto_37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_84

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 218
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 219
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/AppDirectedSMS;->isVzwPermissionGranted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_81

    .line 223
    :cond_4e
    new-instance v7, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 225
    :try_start_5b
    invoke-virtual {v1, v7, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 226
    invoke-direct {p0, v8, p1, v7, v5}, Lcom/android/internal/telephony/AppDirectedSMS;->startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_64} :catch_65

    goto :goto_6e

    :catch_65
    move-exception v8

    .line 228
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v8, "findAppDirectedSMSPackage| ReceiverInfo NameNotFoundException"

    .line 229
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_6e
    :try_start_6e
    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 234
    invoke-direct {p0, v3, p1, v7, v5}, Lcom/android/internal/telephony/AppDirectedSMS;->startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_77} :catch_78

    goto :goto_81

    :catch_78
    move-exception v3

    .line 236
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v3, "findAppDirectedSMSPackage| ApplicationInfo NameNotFoundException"

    .line 237
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_84
    return-object v5

    :cond_85
    :goto_85
    const-string p0, "findAppDirectedSMSPackage| queryResult is null or size is zero"

    .line 211
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private blacklist findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 16

    const-string v0, "  [receiver]="

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "AppDirectedSMS"

    if-eqz v1, :cond_c5

    .line 149
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_24

    goto/16 :goto_c5

    :cond_24
    move-object v6, v4

    .line 154
    :goto_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_c4

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 156
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 157
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/AppDirectedSMS;->isVzwPermissionGranted(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3d

    goto/16 :goto_c0

    :cond_3d
    const/16 v9, 0x80

    .line 162
    :try_start_3f
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v12, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_4a} :catch_7b

    .line 163
    :try_start_4a
    invoke-virtual {v2, v10, v9}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 165
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findAppDirectedSMSPackageWithPrefix| package is found from receiver!!![package]="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_78} :catch_79

    return-object v10

    :catch_79
    move-exception v6

    goto :goto_7f

    :catch_7b
    move-exception v10

    move-object v13, v10

    move-object v10, v6

    move-object v6, v13

    .line 171
    :goto_7f
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v6, "findAppDirectedSMSPackageWithPrefix| ReceiverInfo NameNotFoundException"

    .line 172
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    move-object v6, v10

    .line 176
    :try_start_88
    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 177
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findAppDirectedSMSPackageWithPrefix| package is found from application !!! [package]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_b6} :catch_b7

    return-object v6

    :catch_b7
    move-exception v7

    .line 183
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v7, "findAppDirectedSMSPackageWithPrefix| ApplicationInfo NameNotFoundException"

    .line 184
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    :cond_c4
    return-object v4

    :cond_c5
    :goto_c5
    const-string p0, "queryResult is null or size is zero"

    .line 150
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private blacklist isPackageVzwSmsAuthorized(Ljava/lang/String;)Z
    .registers 15

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPackageVzwSmsAuthorized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDirectedSMS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    return v2

    .line 283
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x2

    const-string v3, "content://com.verizon.vzwavs.provider/apis"

    const-string v4, "content://com.verizon.vzwavs.mvs.provider/apis"

    .line 284
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v9

    move v10, v2

    move v11, v10

    :goto_2f
    const/4 v12, 0x1

    if-ge v10, v0, :cond_74

    .line 285
    aget-object v3, v9, v10

    .line 286
    :try_start_34
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_6c

    if-eqz v3, :cond_66

    .line 287
    :try_start_43
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 288
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZWSMS"

    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_5c

    if-eqz v4, :cond_66

    .line 294
    :try_start_55
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_5a

    move v11, v12

    goto :goto_74

    :catch_5a
    move v11, v12

    goto :goto_6c

    :catchall_5c
    move-exception v4

    .line 286
    :try_start_5d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v3

    :try_start_62
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw v4

    :cond_66
    if-eqz v3, :cond_71

    .line 294
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6b} :catch_6c

    goto :goto_71

    :catch_6c
    :goto_6c
    const-string v3, "isPackageVzwSmsAuthorized|exception while querying avs"

    .line 295
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    .line 299
    :cond_74
    :goto_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isPackageVzwSmsAuthorized result"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private blacklist isVzwPermissionGranted(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "AppDirectedSMS"

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 249
    :try_start_b
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_31

    .line 258
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    return v2

    .line 263
    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_SupportHuxAvs"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->isPackageVzwSmsAuthorized(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return v2

    :cond_2b
    const-string p0, "isVzwPermissionGranted returning false"

    .line 267
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_31
    move-exception p0

    .line 253
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "isVzwPermissionGranted calling package NameNotFoundException"

    .line 254
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string p0, "com.verizon.directedAppSMS"

    .line 332
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist setBestMatchResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)V
    .registers 4

    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackage(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string p0, "//VZW"

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 133
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    const-string p0, "AppDirectedSMS"

    const-string p1, "setBestMatchResult| no component"

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method private blacklist setResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;Ljava/lang/String;)V
    .registers 4

    .line 110
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 112
    invoke-virtual {p2, p0, p1, p3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 114
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    const-string p0, "AppDirectedSMS"

    const-string p1, "setResult| no component"

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method private blacklist startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    .registers 6

    if-eqz p1, :cond_7b

    const-string p0, "com.verizon.directedAppSMS"

    .line 307
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 309
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object p2, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    if-eqz p2, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_7b

    :cond_2c
    if-eqz p1, :cond_45

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_45

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 316
    :cond_45
    iput-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    .line 317
    iput-object p3, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    .line 318
    iput-object p0, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startsWithMetaData| match found [componentName]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [parameter]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [appPrefix]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppDirectedSMS"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS;
    .registers 2

    .line 24
    const-class v0, Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AppDirectedSMS;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/AppDirectedSMS;
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/AppDirectedSMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/AppDirectedSMS;

    return-object v0
.end method


# virtual methods
.method public blacklist checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .registers 5

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    .line 91
    new-instance p1, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    invoke-direct {p1}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;-><init>()V

    const-string v0, "//F1"

    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AppDirectedSMS"

    if-eqz v0, :cond_1c

    const-string v0, "checkIfAppDirSMS| BUA Message"

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BUA-ADS"

    .line 94
    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->setResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;Ljava/lang/String;)V

    return-object p1

    :cond_1c
    const-string v0, "checkIfAppDirSMS| Not BUA"

    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->setBestMatchResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)V

    return-object p1
.end method
