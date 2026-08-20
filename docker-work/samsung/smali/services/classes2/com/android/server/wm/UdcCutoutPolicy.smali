.class public Lcom/android/server/wm/UdcCutoutPolicy;
.super Ljava/lang/Object;
.source "UdcCutoutPolicy.java"


# static fields
.field public static final COMMAND_VALUE:Ljava/lang/String; = "[true/false]"

.field public static final METADATA_SUPPORTS_UDC_CUTOUT:Ljava/lang/String; = "com.samsung.android.supports_udc_cutout"

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final USE_LAYOUT_IN_UDC_CUTOUT_ACTIVITIES_COMMAND:Ljava/lang/String; = "-udc_a"

.field public static final USE_LAYOUT_IN_UDC_CUTOUT_APPLICATIONS_COMMAND:Ljava/lang/String; = "-udc"

.field public static final USE_LAYOUT_IN_UDC_CUTOUT_RESET_COMMAND:Ljava/lang/String; = "-udc_reset"

.field public static final USE_LAYOUT_IN_UDC_CUTOUT_WINDOWS_COMMAND:Ljava/lang/String; = "-udc_w"

.field public static sUseLayoutInUdcCutoutActivities:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static sUseLayoutInUdcCutoutWindows:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpBarContentFrame:Landroid/graphics/Rect;

.field public mUdcConfiguration:Landroid/content/res/Configuration;

.field public mUdcCutout:Landroid/view/DisplayCutout;

.field public mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;


# direct methods
.method public static synthetic $r8$lambda$98LGh6qmVtiWfun_vsMJwLoVCCk(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/UdcCutoutPolicy;->lambda$updateUseForceLayoutInUdcCutoutIfNeeded$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NETqUPrTKDbMqGBkpzBpvbVYB6U(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/UdcCutoutPolicy;->lambda$updateUseForceLayoutInUdcCutoutIfNeeded$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 257
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    sput-object v0, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    .line 259
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    sput-object v0, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 261
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_24
    sput-object v1, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutWindows:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/utils/RotationCache;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 79
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    return-void
.end method

.method public static executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/server/wm/WindowManagerService;)Z
    .registers 12

    const-string v0, "-udc_reset"

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 274
    sget-object p0, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 275
    sget-object p0, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 276
    sget-object p0, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 277
    invoke-static {p3}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowManagerService;)V

    const-string p0, "Reset"

    .line 278
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_21
    const-string v0, "-udc"

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "-udc_w"

    const-string v4, "-udc_a"

    const/4 v5, 0x0

    if-nez v2, :cond_3b

    .line 283
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 284
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    return v5

    .line 288
    :cond_3b
    array-length v2, p1

    const/4 v6, 0x2

    if-eq v2, v1, :cond_42

    array-length v2, p1

    if-ne v2, v6, :cond_ca

    :cond_42
    aget-object v2, p1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 290
    array-length v2, p1

    if-ne v2, v6, :cond_58

    .line 292
    :try_start_4d
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    :cond_58
    move v2, v1

    .line 296
    :goto_59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    aget-object p1, p1, v5

    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 299
    array-length p0, p1

    :goto_7f
    if-ge v5, p0, :cond_c6

    aget-object v0, p1, v5

    .line 300
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 303
    :cond_92
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 304
    array-length p0, p1

    :goto_99
    if-ge v5, p0, :cond_c6

    aget-object v0, p1, v5

    .line 305
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 308
    :cond_ac
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c6

    .line 309
    array-length p0, p1

    :goto_b3
    if-ge v5, p0, :cond_c6

    aget-object v0, p1, v5

    .line 310
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 314
    :cond_c6
    invoke-static {p3}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowManagerService;)V

    return v1

    :cond_ca
    const-string p0, "Error: -udc requires [packageName | packageName:packageName:...] [true/false]"

    .line 318
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Error: -udc_a requires [ComponentName | ComponentName:ComponentName:...] [true/false]"

    .line 320
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Error: -udc_w requires [WindowTitle | WindowTitle:WindowTitle:...] [true/false]"

    .line 322
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public static getApplicationInfo(Lcom/android/server/wm/WindowState;)Landroid/content/pm/ApplicationInfo;
    .registers 8

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 173
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-wide/16 v3, 0x0

    .line 171
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$updateUseForceLayoutInUdcCutoutIfNeeded$0(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 333
    invoke-static {p0}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)Z

    return-void
.end method

.method public static synthetic lambda$updateUseForceLayoutInUdcCutoutIfNeeded$1(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 336
    invoke-static {p0}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)Z

    return-void
.end method

.method public static supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    .line 166
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_10

    const-string v1, "com.samsung.android.supports_udc_cutout"

    .line 167
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 332
    :cond_7
    new-instance v0, Lcom/android/server/wm/UdcCutoutPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/UdcCutoutPolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 335
    new-instance v0, Lcom/android/server/wm/UdcCutoutPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/UdcCutoutPolicy$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public static updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_52

    .line 343
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_96

    .line 344
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 345
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 346
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 347
    iput-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    return v2

    .line 350
    :cond_29
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_96

    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 352
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 353
    iput-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    return v2

    .line 358
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_96

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 361
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 362
    sget-object v1, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutApplications:Ljava/util/concurrent/ConcurrentHashMap;

    .line 363
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    return v2

    .line 366
    :cond_73
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 367
    sget-object v3, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 368
    sget-object v1, Lcom/android/server/wm/UdcCutoutPolicy;->sUseLayoutInUdcCutoutActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 369
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    return v2

    :cond_96
    return v1
.end method

.method public static updateUseLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 141
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseForceLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 146
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 148
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_1b

    .line 149
    iget-boolean v1, v3, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    :cond_19
    :goto_19
    move v2, v1

    goto :goto_48

    .line 150
    :cond_1b
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x2000

    if-nez v3, :cond_48

    .line 151
    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->getApplicationInfo(Lcom/android/server/wm/WindowState;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_48

    .line 155
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 156
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 157
    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_19

    :cond_47
    move v1, v2

    .line 161
    :cond_48
    :goto_48
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    return-void
.end method


# virtual methods
.method public adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 5

    .line 200
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsStateForUdcCutout:Landroid/view/InsetsState;

    if-nez v0, :cond_b

    .line 201
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsStateForUdcCutout:Landroid/view/InsetsState;

    .line 203
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsStateForUdcCutout:Landroid/view/InsetsState;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/wm/UdcCutoutPolicy;->getFixedRotationTransformDisplayFrames(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayFrames;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsStateForUdcCutout:Landroid/view/InsetsState;

    .line 204
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/UdcCutoutPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 206
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsStateForUdcCutout:Landroid/view/InsetsState;

    return-object p0
.end method

.method public calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_31

    .line 130
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " udcCutout="

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    if-eqz p2, :cond_2e

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p2

    if-nez p2, :cond_2e

    const-string p2, ", config="

    .line 134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 137
    :cond_2e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_31
    :goto_31
    return-void
.end method

.method public final getFixedRotationTransformDisplayFrames(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayFrames;
    .registers 4

    .line 229
    instance-of v0, p1, Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 230
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    goto :goto_26

    .line 231
    :cond_e
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_26

    .line 232
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 233
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1e

    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    :cond_1e
    if-nez v1, :cond_26

    .line 237
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    :cond_26
    :goto_26
    if-eqz v1, :cond_29

    goto :goto_2b

    .line 240
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :goto_2b
    return-object v1
.end method

.method public getIntersectedCutout(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 196
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hasUdcCutout()Z
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onDisplayInfoUpdated(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V
    .registers 13

    .line 179
    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/UdcCutoutPolicy;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v5

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 181
    new-instance v0, Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3, p1, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object v1, v0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V

    iput-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    return-void

    .line 186
    :cond_20
    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 187
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p0, p2, v5, p3, p4}, Lcom/android/server/wm/DisplayFrames;->update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 244
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    return-void

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_16

    .line 249
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    goto :goto_19

    .line 251
    :cond_16
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 253
    :goto_19
    iget-object v0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;

    return-void
.end method

.method public final updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V
    .registers 11

    .line 210
    iget-object p0, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    .line 211
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    .line 212
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p0

    const/16 v0, 0xe

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0xb

    if-eqz p0, :cond_24

    .line 213
    invoke-virtual {p2, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 214
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 215
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    return-void

    .line 219
    :cond_24
    iget-object p0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 220
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {p2, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 222
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 223
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 224
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/view/InsetsSource;->setFrame(IIII)V

    return-void
.end method

.method public updateUdcCutout(Landroid/view/DisplayInfo;II)V
    .registers 12

    .line 85
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 84
    invoke-static {v0, p2, p1}, Landroid/view/DisplayCutout;->getProportionalDensity(III)I

    move-result v6

    .line 90
    iget-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040363

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_29

    .line 99
    :cond_1b
    iget-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;IIIIILjava/lang/String;)Landroid/view/DisplayCutout;

    move-result-object p1

    :goto_29
    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    const-string p2, "WindowManager"

    if-eqz p1, :cond_46

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UdcCutoutPolicy: updateUdcCutout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 112
    :cond_46
    invoke-static {}, Lcom/samsung/android/rune/CoreRune;->isSamsungLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_61

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UdcCutoutPolicy: updateUdcCutout=null, isPrimaryDisplay="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_61
    return-void
.end method
