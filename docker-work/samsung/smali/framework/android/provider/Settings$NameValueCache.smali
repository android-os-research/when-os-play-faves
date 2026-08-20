.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private greylist-max-o mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3153
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 3154
    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    .line 3156
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3187
    .local p6, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3189
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "listCommand"    # Ljava/lang/String;
    .param p6, "setAllCommand"    # Ljava/lang/String;
    .param p7, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3193
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3194
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3195
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3196
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3197
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3198
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3199
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3200
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3201
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3202
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3203
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3204
    invoke-static {p8, v1, v0, v2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3206
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings$NameValueCache-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 6

    .line 3560
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3561
    return v1

    .line 3563
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 3564
    return v1

    .line 3566
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3567
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 3570
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3571
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 3573
    .local v4, "isTestOnly":Z
    :goto_30
    if-nez v4, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_47

    .line 3574
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_47

    :cond_45
    move v1, v2

    goto :goto_48

    :cond_47
    :goto_47
    nop

    .line 3573
    :goto_48
    return v1

    .line 3568
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_49
    :goto_49
    return v2
.end method

.method private blacklist isCloneToManagedProfileKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 3309
    invoke-static {}, Landroid/provider/Settings$System;->-$$Nest$sfgetCLONE_TO_MANAGED_PROFILE()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Landroid/provider/Settings$Secure;->-$$Nest$sfgetCLONE_TO_MANAGED_PROFILE()Ljava/util/Set;

    move-result-object v0

    .line 3310
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 3309
    :goto_18
    return v0
.end method

.method private blacklist semDumpCallStackIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 3242
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    const-string v1, "PUT_secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_7f

    .line 3246
    :cond_13
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3247
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_21

    .line 3248
    const-string v1, "Settings"

    const-string v2, "can\'t get context for a11y callstack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    return-void

    .line 3252
    :cond_21
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3253
    .local v1, "time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nvalue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\npackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nuser id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "a11y service changed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3257
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3259
    .local v2, "callStack":Ljava/lang/String;
    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 3261
    .local v3, "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v3, :cond_7e

    .line 3262
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->semDumpCallStack(Ljava/lang/String;)V

    .line 3264
    :cond_7e
    return-void

    .line 3243
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "time":Ljava/lang/String;
    .end local v2    # "callStack":Ljava/lang/String;
    .end local v3    # "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_7f
    :goto_7f
    return-void
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .registers 2

    .line 3736
    monitor-enter p0

    .line 3737
    :try_start_1
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_8

    .line 3738
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3740
    :cond_8
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3741
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3742
    monitor-exit p0

    .line 3743
    return-void

    .line 3742
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3290
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3291
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3292
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3293
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3294
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3293
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_28

    .line 3298
    nop

    .line 3299
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    const/4 v0, 0x1

    return v0

    .line 3295
    :catch_28
    move-exception v0

    .line 3296
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3297
    const/4 v1, 0x0

    return v1
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 27
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3321
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_8e

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3322
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3331
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3332
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3333
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 3334
    .local v2, "application":Landroid/app/Application;
    if-eqz v2, :cond_48

    .line 3335
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 3336
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v3, v0, :cond_48

    move v3, v10

    goto :goto_49

    :cond_48
    move v3, v11

    .line 3338
    .local v3, "targetSdkCheckOk":Z
    :goto_49
    if-eqz v3, :cond_4c

    goto :goto_8e

    .line 3339
    :cond_4c
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings key: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3323
    .end local v0    # "maxTargetSdk":I
    .end local v2    # "application":Landroid/app/Application;
    .end local v3    # "targetSdkCheckOk":Z
    :cond_6f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3349
    :cond_8e
    :goto_8e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne v9, v0, :cond_96

    move v0, v10

    goto :goto_97

    :cond_96
    move v0, v11

    :goto_97
    move v12, v0

    .line 3351
    .local v12, "isSelf":Z
    invoke-direct {v1, v8}, Landroid/provider/Settings$NameValueCache;->isCloneToManagedProfileKey(Ljava/lang/String;)Z

    move-result v13

    .line 3353
    .local v13, "isCloneToManagedProfileKey":Z
    const/4 v2, -0x1

    .line 3354
    .local v2, "currentGeneration":I
    if-eqz v12, :cond_147

    if-nez v13, :cond_147

    .line 3358
    monitor-enter p0

    .line 3359
    :try_start_a2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_141

    .line 3360
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 3361
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_e6

    .line 3362
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generation changed for type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3363
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3364
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3362
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_e6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_138

    .line 3367
    :cond_ec
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 3370
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3371
    .local v0, "result":Ljava/lang/String;
    sget-boolean v3, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v3, :cond_136

    .line 3372
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3374
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Cached)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3372
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_136
    monitor-exit p0

    return-object v0

    .line 3381
    .end local v0    # "result":Ljava/lang/String;
    :cond_138
    :goto_138
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_141

    .line 3382
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    move v2, v0

    .line 3385
    :cond_141
    monitor-exit p0

    move v14, v2

    goto :goto_148

    :catchall_144
    move-exception v0

    monitor-exit p0
    :try_end_146
    .catchall {:try_start_a2 .. :try_end_146} :catchall_144

    throw v0

    .line 3391
    :cond_147
    move v14, v2

    .end local v2    # "currentGeneration":I
    .local v14, "currentGeneration":I
    :goto_148
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v22

    .line 3397
    .local v22, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v0, :cond_2f1

    .line 3399
    const/4 v0, 0x0

    .line 3400
    .local v0, "args":Landroid/os/Bundle;
    if-nez v12, :cond_165

    .line 3401
    :try_start_158
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 3402
    const-string v2, "_user"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    goto :goto_166

    .line 3400
    :cond_165
    move-object v2, v0

    .line 3404
    .end local v0    # "args":Landroid/os/Bundle;
    .local v2, "args":Landroid/os/Bundle;
    :goto_166
    const/4 v3, 0x0

    .line 3405
    .local v3, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_168} :catch_2f0

    .line 3406
    if-eqz v12, :cond_1bc

    :try_start_16a
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_1bc

    if-nez v13, :cond_1bc

    .line 3410
    const/4 v3, 0x1

    .line 3411
    if-nez v2, :cond_179

    .line 3412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 3414
    :cond_179
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_1bc

    .line 3416
    const-string v0, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested generation tracker for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3417
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3416
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catchall {:try_start_16a .. :try_end_1b8} :catchall_1b9

    goto :goto_1bc

    .line 3421
    :catchall_1b9
    move-exception v0

    goto/16 :goto_2ee

    :cond_1bc
    :goto_1bc
    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "needsGenerationTracker":Z
    .local v16, "args":Landroid/os/Bundle;
    .local v17, "needsGenerationTracker":Z
    :try_start_1c0
    monitor-exit p0
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_2e9

    .line 3429
    :try_start_1c1
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_1fd

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_1fd

    .line 3430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1d5
    .catch Landroid/os/RemoteException; {:try_start_1c1 .. :try_end_1d5} :catch_2f0

    move-wide/from16 v18, v2

    .line 3432
    .local v18, "token":J
    :try_start_1d7
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3433
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3432
    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1f1
    .catchall {:try_start_1d7 .. :try_end_1f1} :catchall_1f7

    .line 3436
    .local v0, "b":Landroid/os/Bundle;
    :try_start_1f1
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3437
    nop

    .line 3438
    .end local v18    # "token":J
    move-object v2, v0

    goto :goto_218

    .line 3436
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v18    # "token":J
    :catchall_1f7
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3437
    nop

    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3439
    .end local v18    # "token":J
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_1fd
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3440
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3439
    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    .line 3442
    .local v2, "b":Landroid/os/Bundle;
    :goto_218
    if-eqz v2, :cond_2e8

    .line 3443
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 3445
    .local v3, "value":Ljava/lang/String;
    if-eqz v12, :cond_2ad

    .line 3446
    monitor-enter p0
    :try_end_225
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_225} :catch_2f0

    .line 3447
    if-eqz v17, :cond_299

    .line 3448
    :try_start_227
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3450
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v4, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3452
    .local v4, "index":I
    if-eqz v0, :cond_299

    if-ltz v4, :cond_299

    .line 3453
    const-string v5, "_generation"

    invoke-virtual {v2, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3455
    .local v5, "generation":I
    sget-boolean v6, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v6, :cond_284

    .line 3456
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received generation tracker for type:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3457
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " in package:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3458
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " and user:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " with index:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3456
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    :cond_284
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v6, :cond_28b

    .line 3462
    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3464
    :cond_28b
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    new-instance v7, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda1;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v6, v0, v4, v5, v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3478
    move v6, v5

    move v14, v6

    .line 3481
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v4    # "index":I
    .end local v5    # "generation":I
    :cond_299
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_2a8

    .line 3482
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_2a8

    .line 3483
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    :cond_2a8
    monitor-exit p0

    goto :goto_2ad

    :catchall_2aa
    move-exception v0

    monitor-exit p0
    :try_end_2ac
    .catchall {:try_start_227 .. :try_end_2ac} :catchall_2aa

    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_2ac
    throw v0

    .line 3492
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_2ad
    :goto_2ad
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_2e7

    .line 3493
    const-string v0, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3495
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ProviderCall)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3493
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e7
    .catch Landroid/os/RemoteException; {:try_start_2ac .. :try_end_2e7} :catch_2f0

    .line 3499
    :cond_2e7
    return-object v3

    .line 3506
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v17    # "needsGenerationTracker":Z
    :cond_2e8
    goto :goto_2f1

    .line 3421
    .restart local v16    # "args":Landroid/os/Bundle;
    .restart local v17    # "needsGenerationTracker":Z
    :catchall_2e9
    move-exception v0

    move-object/from16 v2, v16

    move/from16 v3, v17

    .end local v16    # "args":Landroid/os/Bundle;
    .end local v17    # "needsGenerationTracker":Z
    .local v2, "args":Landroid/os/Bundle;
    .local v3, "needsGenerationTracker":Z
    :goto_2ee
    :try_start_2ee
    monitor-exit p0
    :try_end_2ef
    .catchall {:try_start_2ee .. :try_end_2ef} :catchall_1b9

    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_2ef
    throw v0
    :try_end_2f0
    .catch Landroid/os/RemoteException; {:try_start_2ef .. :try_end_2f0} :catch_2f0

    .line 3503
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "needsGenerationTracker":Z
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_2f0
    move-exception v0

    .line 3509
    :cond_2f1
    :goto_2f1
    const/4 v11, 0x0

    .line 3511
    .local v11, "c":Landroid/database/Cursor;
    :try_start_2f2
    const-string/jumbo v0, "name=?"

    new-array v2, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3
    :try_end_2fa
    .catch Landroid/os/RemoteException; {:try_start_2f2 .. :try_end_2fa} :catch_3d9
    .catchall {:try_start_2f2 .. :try_end_2fa} :catchall_3d7

    const/4 v10, 0x0

    :try_start_2fb
    invoke-static {v0, v2, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3514
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_330

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_330

    .line 3515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_313
    .catch Landroid/os/RemoteException; {:try_start_2fb .. :try_end_313} :catch_3d5
    .catchall {:try_start_2fb .. :try_end_313} :catchall_3d7

    move-wide/from16 v16, v2

    .line 3517
    .local v16, "token":J
    :try_start_315
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, v22

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_324
    .catchall {:try_start_315 .. :try_end_324} :catchall_32a

    move-object v11, v0

    .line 3520
    :try_start_325
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3521
    nop

    .line 3522
    .end local v16    # "token":J
    goto :goto_345

    .line 3520
    .restart local v16    # "token":J
    :catchall_32a
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3521
    nop

    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3523
    .end local v16    # "token":J
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_330
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v17

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v19, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-object/from16 v18, v0

    move-object/from16 v20, v6

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 3526
    :goto_345
    if-nez v11, :cond_372

    .line 3527
    const-string v0, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36b
    .catch Landroid/os/RemoteException; {:try_start_325 .. :try_end_36b} :catch_3d5
    .catchall {:try_start_325 .. :try_end_36b} :catchall_3d7

    .line 3528
    nop

    .line 3555
    if-eqz v11, :cond_371

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3528
    :cond_371
    return-object v10

    .line 3531
    :cond_372
    :try_start_372
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37e

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_37f

    :cond_37e
    move-object v7, v10

    :goto_37f
    move-object v2, v7

    .line 3532
    .local v2, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_381
    .catch Landroid/os/RemoteException; {:try_start_372 .. :try_end_381} :catch_3d5
    .catchall {:try_start_372 .. :try_end_381} :catchall_3d7

    .line 3533
    :try_start_381
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_390

    .line 3534
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_390

    .line 3535
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    :cond_390
    monitor-exit p0
    :try_end_391
    .catchall {:try_start_381 .. :try_end_391} :catchall_3d2

    .line 3543
    :try_start_391
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_3cb

    .line 3544
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3546
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (Query)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3544
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3cb
    .catch Landroid/os/RemoteException; {:try_start_391 .. :try_end_3cb} :catch_3d5
    .catchall {:try_start_391 .. :try_end_3cb} :catchall_3d7

    .line 3550
    :cond_3cb
    nop

    .line 3555
    if-eqz v11, :cond_3d1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3550
    :cond_3d1
    return-object v2

    .line 3537
    :catchall_3d2
    move-exception v0

    :try_start_3d3
    monitor-exit p0
    :try_end_3d4
    .catchall {:try_start_3d3 .. :try_end_3d4} :catchall_3d2

    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_3d4
    throw v0
    :try_end_3d5
    .catch Landroid/os/RemoteException; {:try_start_3d4 .. :try_end_3d5} :catch_3d5
    .catchall {:try_start_3d4 .. :try_end_3d5} :catchall_3d7

    .line 3551
    .end local v2    # "value":Ljava/lang/String;
    .end local v6    # "queryArgs":Landroid/os/Bundle;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_3d5
    move-exception v0

    goto :goto_3db

    .line 3555
    :catchall_3d7
    move-exception v0

    goto :goto_406

    .line 3551
    :catch_3d9
    move-exception v0

    const/4 v10, 0x0

    .line 3552
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3db
    :try_start_3db
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ff
    .catchall {:try_start_3db .. :try_end_3ff} :catchall_3d7

    .line 3553
    nop

    .line 3555
    if-eqz v11, :cond_405

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3553
    :cond_405
    return-object v10

    .line 3555
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_406
    if-eqz v11, :cond_40b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3556
    :cond_40b
    throw v0
.end method

.method public blacklist getStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 23
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3579
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3580
    .local v4, "namespace":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3581
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 3582
    .local v5, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 3584
    .local v6, "currentGeneration":I
    monitor-enter p0

    .line 3585
    :try_start_1e
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_29f

    if-eqz v0, :cond_d1

    .line 3586
    :try_start_22
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3587
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_58

    .line 3588
    const-string v0, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generation changed for type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3589
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3588
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_58
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_be

    .line 3593
    :cond_5e
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3594
    .local v0, "prefixCached":Z
    if-eqz v0, :cond_be

    .line 3595
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_91

    .line 3596
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3597
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 3598
    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3600
    .end local v7    # "name":Ljava/lang/String;
    :cond_8f
    goto :goto_70

    :cond_90
    goto :goto_bc

    .line 3602
    :cond_91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_92
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_bc

    .line 3603
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3606
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b9

    .line 3607
    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3602
    .end local v7    # "key":Ljava/lang/String;
    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 3611
    .end local v3    # "i":I
    :cond_bc
    :goto_bc
    monitor-exit p0

    return-object v5

    .line 3614
    .end local v0    # "prefixCached":Z
    :cond_be
    :goto_be
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_d1

    .line 3615
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0
    :try_end_c6
    .catchall {:try_start_22 .. :try_end_c6} :catchall_c8

    move v6, v0

    goto :goto_d1

    .line 3618
    :catchall_c8
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    goto/16 :goto_2a6

    :cond_d1
    :goto_d1
    :try_start_d1
    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_29f

    .line 3620
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_d7

    .line 3622
    return-object v5

    .line 3624
    :cond_d7
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v14

    .line 3627
    .local v14, "cp":Landroid/content/IContentProvider;
    :try_start_df
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v15, v0

    .line 3628
    .local v15, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    const/4 v8, 0x0

    .line 3630
    .local v8, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_ec} :catch_299

    .line 3631
    :try_start_ec
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_ee
    .catchall {:try_start_ec .. :try_end_ee} :catchall_28e

    const/4 v13, 0x0

    if-nez v0, :cond_131

    .line 3632
    const/4 v8, 0x1

    .line 3633
    :try_start_f2
    const-string v0, "_track_generation"

    invoke-virtual {v15, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_127

    .line 3635
    const-string v0, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested generation tracker for type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3636
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3635
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_f2 .. :try_end_127} :catchall_12a

    .line 3639
    :cond_127
    move/from16 v16, v8

    goto :goto_133

    :catchall_12a
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    goto/16 :goto_293

    .line 3631
    :cond_131
    move/from16 v16, v8

    .line 3639
    .end local v8    # "needsGenerationTracker":Z
    .local v16, "needsGenerationTracker":Z
    :goto_133
    :try_start_133
    monitor-exit p0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_286

    .line 3650
    :try_start_134
    const-string v0, "device_policy_manager"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_13a} :catch_299

    if-nez v0, :cond_14e

    :try_start_13c
    const-string v0, "autofill"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_142} :catch_147

    if-eqz v0, :cond_145

    goto :goto_14e

    :cond_145
    move-object v0, v13

    goto :goto_18a

    .line 3729
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v16    # "needsGenerationTracker":Z
    :catch_147
    move-exception v0

    move-object/from16 v13, p3

    :goto_14a
    move-object/from16 v17, v4

    goto/16 :goto_29e

    .line 3652
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v16    # "needsGenerationTracker":Z
    :cond_14e
    :goto_14e
    :try_start_14e
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_152} :catch_299

    if-eqz v0, :cond_189

    .line 3653
    :try_start_154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v0, v8, :cond_187

    .line 3654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_162
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_162} :catch_147

    move-wide/from16 v17, v8

    .line 3657
    .local v17, "token":J
    :try_start_164
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3658
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/4 v12, 0x0

    .line 3657
    move-object v8, v14

    move-object v0, v13

    move-object v13, v15

    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8
    :try_end_17c
    .catchall {:try_start_164 .. :try_end_17c} :catchall_181

    .line 3660
    .local v8, "b":Landroid/os/Bundle;
    :try_start_17c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3661
    nop

    .line 3662
    .end local v17    # "token":J
    goto :goto_1a1

    .line 3660
    .end local v8    # "b":Landroid/os/Bundle;
    .restart local v17    # "token":J
    :catchall_181
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3661
    nop

    .end local v4    # "namespace":Ljava/lang/String;
    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_17c .. :try_end_187} :catch_147

    .line 3653
    .end local v17    # "token":J
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_187
    move-object v0, v13

    goto :goto_18a

    .line 3652
    :cond_189
    move-object v0, v13

    .line 3664
    :goto_18a
    :try_start_18a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v8}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v8

    .line 3665
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/4 v12, 0x0

    .line 3664
    move-object v8, v14

    move-object v13, v15

    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 3667
    .restart local v8    # "b":Landroid/os/Bundle;
    :goto_1a1
    if-nez v8, :cond_1a4

    .line 3669
    return-object v5

    .line 3673
    :cond_1a4
    const-string/jumbo v9, "value"

    .line 3674
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 3676
    .local v9, "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v10
    :try_end_1b1
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_1b1} :catch_299

    if-nez v10, :cond_1ec

    .line 3677
    :try_start_1b3
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1bb
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3678
    .local v11, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12
    :try_end_1cb
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1cb} :catch_147

    move-object/from16 v13, p3

    :try_start_1cd
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e4

    .line 3679
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e4
    .catch Landroid/os/RemoteException; {:try_start_1cd .. :try_end_1e4} :catch_1e6

    .line 3681
    .end local v11    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1e4
    const/4 v0, 0x0

    goto :goto_1bb

    .line 3729
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v16    # "needsGenerationTracker":Z
    :catch_1e6
    move-exception v0

    goto/16 :goto_14a

    .line 3681
    .restart local v8    # "b":Landroid/os/Bundle;
    .restart local v9    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v16    # "needsGenerationTracker":Z
    :cond_1e9
    move-object/from16 v13, p3

    goto :goto_1f1

    .line 3683
    :cond_1ec
    move-object/from16 v13, p3

    :try_start_1ee
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3686
    :goto_1f1
    monitor-enter p0
    :try_end_1f2
    .catch Landroid/os/RemoteException; {:try_start_1ee .. :try_end_1f2} :catch_284

    .line 3687
    if-eqz v16, :cond_268

    .line 3688
    :try_start_1f4
    const-string v0, "_track_generation"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3690
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v10, "_generation_index"

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 3692
    .local v10, "index":I
    if-eqz v0, :cond_261

    if-ltz v10, :cond_261

    .line 3693
    const-string v11, "_generation"

    invoke-virtual {v8, v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3695
    .local v3, "generation":I
    sget-boolean v11, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v11, :cond_24a

    .line 3696
    const-string v11, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_218
    .catchall {:try_start_1f4 .. :try_end_218} :catchall_264

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .local v17, "namespace":Ljava/lang/String;
    :try_start_21a
    const-string v4, "Received generation tracker for type:"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3697
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " in package:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3698
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " with index:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3696
    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24c

    .line 3695
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :cond_24a
    move-object/from16 v17, v4

    .line 3700
    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_24c
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v4, :cond_253

    .line 3701
    invoke-virtual {v4}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3703
    :cond_253
    new-instance v4, Landroid/provider/Settings$GenerationTracker;

    new-instance v11, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v4, v0, v10, v3, v11}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3717
    move v6, v3

    goto :goto_26a

    .line 3692
    .end local v3    # "generation":I
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :cond_261
    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    goto :goto_26a

    .line 3727
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v10    # "index":I
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :catchall_264
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    goto :goto_282

    .line 3687
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :cond_268
    move-object/from16 v17, v4

    .line 3720
    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_26a
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_27f

    .line 3721
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v6, v0, :cond_27f

    .line 3723
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3725
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3727
    :cond_27f
    monitor-exit p0

    .line 3728
    return-object v5

    .line 3727
    :catchall_281
    move-exception v0

    :goto_282
    monitor-exit p0
    :try_end_283
    .catchall {:try_start_21a .. :try_end_283} :catchall_281

    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local v17    # "namespace":Ljava/lang/String;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_283
    throw v0
    :try_end_284
    .catch Landroid/os/RemoteException; {:try_start_283 .. :try_end_284} :catch_295

    .line 3729
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v16    # "needsGenerationTracker":Z
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_284
    move-exception v0

    goto :goto_29c

    .line 3639
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v16    # "needsGenerationTracker":Z
    :catchall_286
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v8, v16

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    goto :goto_293

    .end local v16    # "needsGenerationTracker":Z
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    .local v8, "needsGenerationTracker":Z
    :catchall_28e
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_293
    :try_start_293
    monitor-exit p0
    :try_end_294
    .catchall {:try_start_293 .. :try_end_294} :catchall_297

    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local v17    # "namespace":Ljava/lang/String;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_294
    throw v0
    :try_end_295
    .catch Landroid/os/RemoteException; {:try_start_294 .. :try_end_295} :catch_295

    .line 3729
    .end local v8    # "needsGenerationTracker":Z
    .end local v15    # "args":Landroid/os/Bundle;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local v17    # "namespace":Ljava/lang/String;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_295
    move-exception v0

    goto :goto_29e

    .line 3639
    .restart local v8    # "needsGenerationTracker":Z
    .restart local v15    # "args":Landroid/os/Bundle;
    :catchall_297
    move-exception v0

    goto :goto_293

    .line 3729
    .end local v8    # "needsGenerationTracker":Z
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :catch_299
    move-exception v0

    move-object/from16 v13, p3

    :goto_29c
    move-object/from16 v17, v4

    .line 3731
    .end local v4    # "namespace":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_29e
    return-object v5

    .line 3618
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :catchall_29f
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_2a6
    :try_start_2a6
    monitor-exit p0
    :try_end_2a7
    .catchall {:try_start_2a6 .. :try_end_2a7} :catchall_2a8

    throw v0

    :catchall_2a8
    move-exception v0

    goto :goto_2a6
.end method

.method synthetic blacklist lambda$getStringForUser$0$android-provider-Settings$NameValueCache()V
    .registers 3

    .line 3466
    monitor-enter p0

    .line 3467
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_18

    .line 3470
    nop

    .line 3472
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3473
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3474
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3476
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_18
    monitor-exit p0

    .line 3477
    return-void

    .line 3476
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method synthetic blacklist lambda$getStringsForPrefix$1$android-provider-Settings$NameValueCache()V
    .registers 3

    .line 3705
    monitor-enter p0

    .line 3706
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_18

    .line 3709
    nop

    .line 3711
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3712
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3713
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3715
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_18
    monitor-exit p0

    .line 3716
    return-void

    .line 3715
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 16
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I
    .param p7, "overrideableByRestore"    # Z

    .line 3212
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3213
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3215
    if-eqz p4, :cond_17

    .line 3216
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    :cond_17
    const/4 v7, 0x1

    if-eqz p5, :cond_1f

    .line 3219
    const-string v1, "_make_default"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3221
    :cond_1f
    if-eqz p7, :cond_26

    .line 3222
    const-string v1, "_overrideable_by_restore"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3224
    :cond_26
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3225
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3226
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3225
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3229
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, p3, v2, p6}, Landroid/provider/Settings$NameValueCache;->semDumpCallStackIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_48} :catch_4a

    .line 3235
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    nop

    .line 3236
    return v7

    .line 3232
    :catch_4a
    move-exception v0

    .line 3233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3234
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3269
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3271
    return v1

    .line 3274
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3275
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "_prefix"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3276
    const-string v2, "_flags"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3277
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3278
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 3279
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v6, 0x0

    .line 3278
    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3281
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "config_set_all_return"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_38

    return v1

    .line 3282
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catch_38
    move-exception v0

    .line 3284
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
