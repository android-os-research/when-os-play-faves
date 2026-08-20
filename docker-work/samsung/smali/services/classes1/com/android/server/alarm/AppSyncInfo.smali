.class public Lcom/android/server/alarm/AppSyncInfo;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;,
        Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;,
        Lcom/android/server/alarm/AppSyncInfo$PackageList;,
        Lcom/android/server/alarm/AppSyncInfo$Sales;,
        Lcom/android/server/alarm/AppSyncInfo$AccountListener;,
        Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;
    }
.end annotation


# static fields
.field public static final APP_SYNC_LOG:Z = false

.field public static final DEBUG_MID:Z = false

.field public static final DEFAULT_EXP_MIN_INEXACT_WINDOW:J = 0x493e0L

.field public static final DEFAULT_SUSPICIOUS_TIME_THRESHOLD:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "AppSyncInfo"


# instance fields
.field public EXP_MIN_INEXACT_WINDOW:J

.field public SUSPICIOUS_TIME_THRESHOLD:J

.field public boot_filter:Landroid/content/IntentFilter;

.field public mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

.field public final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackagesFromConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBootIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mCharging:Z

.field public mContext:Landroid/content/Context;

.field public final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFilter:Landroid/content/IntentFilter;

.field public final mLockAllowlistFromSCPM:Ljava/lang/Object;

.field public final mLockBlocklistFromSCPM:Ljava/lang/Object;

.field public final mLockExt:Ljava/lang/Object;

.field public final mLockSuspiciousTagSet:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field public final mPermanentAllowlistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPm:Landroid/content/pm/PackageManager;

.field public mReceiver:Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

.field public mSCPMReceiver:Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;

.field public mScreenOn:Z

.field public mSuspiciousTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSuspiciousTagSetFromApi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSuspiciousTagSetFromSCPM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preloadedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccountListener(Lcom/android/server/alarm/AppSyncInfo;)Lcom/android/server/alarm/AppSyncInfo$AccountListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/alarm/AppSyncInfo;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCscPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCharging(Lcom/android/server/alarm/AppSyncInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/alarm/AppSyncInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageTag(Lcom/android/server/alarm/AppSyncInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitFilter(Lcom/android/server/alarm/AppSyncInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo;->initFilter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousPolicy(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    .line 211
    invoke-direct {p0}, Lcom/android/server/alarm/AppSyncWrapper;-><init>()V

    const-wide/16 v0, 0x2710

    .line 138
    iput-wide v0, p0, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    const-wide/32 v0, 0x493e0

    .line 141
    iput-wide v0, p0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mReceiver:Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

    .line 147
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockExt:Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 160
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 162
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 163
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 165
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 166
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 168
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 184
    new-instance v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 185
    new-instance v4, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig:Ljava/util/ArrayList;

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 192
    new-instance v6, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 194
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 196
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    .line 197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 310
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 311
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    invoke-direct {v8, p0}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    .line 214
    iput-boolean v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    const/4 v8, 0x0

    .line 215
    iput-boolean v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 216
    new-instance v9, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    iput-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mReceiver:Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

    .line 217
    iget-object v10, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    new-instance v9, Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    invoke-direct {v9, p0, v0}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;-><init>(Lcom/android/server/alarm/AppSyncInfo;Lcom/android/server/alarm/AppSyncInfo$AccountListener-IA;)V

    iput-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 221
    new-instance v0, Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSCPMReceiver:Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;

    .line 223
    monitor-enter v1

    .line 224
    :try_start_dd
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 225
    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->clear()V

    .line 226
    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->clear()V

    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string p1, "com.sec.spp.push"

    .line 232
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sec.chaton"

    .line 233
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.facebook.katana"

    .line 234
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.twitter.android"

    .line 235
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.facebook.orca"

    .line 236
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.kakao.talk"

    .line 237
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.google.android.apps.plus"

    .line 238
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.mobilesrepublic.appygeek"

    .line 239
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "mnn.Android"

    .line 240
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.google.android.apps.maps"

    .line 241
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSyncBlockList()V

    .line 248
    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSync3PlusBlockList()V

    .line 250
    invoke-virtual {v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadChnAllowlist()V

    .line 252
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_129
    :goto_129
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_143

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_129

    .line 254
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    goto :goto_129

    .line 257
    :cond_143
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_149
    :goto_149
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_149

    .line 259
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    goto :goto_149

    .line 266
    :cond_163
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    const-string v0, "com.samsung.location"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_175
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_187

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    .line 275
    :cond_187
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18d

    .line 278
    :cond_19f
    :goto_19f
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v8, p1, :cond_1d0

    const-string p1, "AppSyncInfo"

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<TargetPackages> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_19f

    .line 282
    :cond_1d0
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.services"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.katana"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.orca"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.pages.app"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.appmanager"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.system"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.whatsapp"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.instagram.android"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.skype.raider"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.microsoft.skydrive"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string p1, "com.samsung.android.opencalendar"

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v1

    return-void

    :catchall_22f
    move-exception p0

    monitor-exit v1
    :try_end_231
    .catchall {:try_start_dd .. :try_end_231} :catchall_22f

    throw p0
.end method

.method public static createAppSync(Landroid/content/Context;)Lcom/android/server/alarm/AppSyncWrapper;
    .registers 3

    const-string/jumbo v0, "ro.csc.country_code"

    .line 205
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 206
    new-instance v0, Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AppSyncInfo;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 208
    :cond_15
    new-instance p0, Lcom/android/server/alarm/DummyAppSync;

    invoke-direct {p0}, Lcom/android/server/alarm/DummyAppSync;-><init>()V

    return-object p0
.end method

.method public static isActivePackage(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 407
    :cond_4
    :try_start_4
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 408
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 410
    invoke-virtual {v1, p1, p0, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1d

    const/16 p1, 0xa

    if-gt p0, p1, :cond_1d

    const/4 v0, 0x1

    :catch_1d
    :cond_1d
    return v0
.end method


# virtual methods
.method public final addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    .line 868
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 869
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    :goto_19
    return-void
.end method

.method public final addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    .line 859
    :cond_7
    monitor-enter p1

    .line 860
    :try_start_8
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 861
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0

    :cond_10
    :goto_10
    return-void
.end method

.method public final containsPackageAsUser(Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 825
    :cond_4
    sget-object v1, Lcom/android/server/alarm/AppSyncInfo$2;->$SwitchMap$com$android$server$alarm$AppSyncWrapper$SET_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    return v0

    .line 827
    :cond_10
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/alarm/AppSyncInfo;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p3, :cond_8

    goto :goto_24

    .line 838
    :cond_8
    invoke-virtual {p0, p3, p4}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, -0x1

    .line 839
    invoke-virtual {p0, p3, v1}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 840
    monitor-enter p1

    .line 841
    :try_start_12
    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1e

    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    monitor-exit p1

    return v0

    :catchall_21
    move-exception p0

    .line 842
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    :goto_24
    return v0
.end method

.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 5

    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 915
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/alarm/AppSyncInfo;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 917
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter p2

    .line 918
    :try_start_e
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 919
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/alarm/AppSyncInfo;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_25

    .line 921
    :cond_1e
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/alarm/AppSyncInfo;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 923
    :goto_25
    monitor-exit p2

    const/4 p0, 0x1

    return p0

    :catchall_28
    move-exception p0

    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    const-string v0, ""

    .line 450
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "<AppSyncInfo>"

    .line 451
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCharging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUSP_THRE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INEXACT_WIN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  <AppSync3 Allowlist>"

    .line 457
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "   (AppSync) "

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f

    .line 461
    :cond_93
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   (AppSync) ---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3 TargetList>"

    .line 463
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 465
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a6

    .line 467
    :cond_c8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3 Blocklist>"

    .line 470
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3p Blocklist>"

    .line 474
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 900
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/alarm/AppSyncInfo;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 902
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/alarm/AppSyncInfo;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWindowLength()J
    .registers 3

    .line 435
    iget-wide v0, p0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    return-wide v0
.end method

.method public final initFilter()V
    .registers 3

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public isAdjustableAlarm(IJJJILjava/lang/String;)Z
    .registers 21

    move-object v6, p0

    move-wide/from16 v7, p6

    .line 439
    iget-wide v0, v6, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_45

    invoke-static/range {p8 .. p8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_45

    move/from16 v4, p8

    move-object/from16 v5, p9

    invoke-virtual {p0, v4, v5}, Lcom/android/server/alarm/AppSyncInfo;->isTargetApplication(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p8

    move-object/from16 v5, p9

    .line 440
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/alarm/AppSyncInfo;->isSuspiciousAlarm(IJILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    cmp-long v0, p4, v9

    if-ltz v0, :cond_32

    .line 441
    iget-wide v1, v6, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    cmp-long v1, p4, v1

    if-ltz v1, :cond_43

    :cond_32
    if-gez v0, :cond_45

    cmp-long v0, v7, v9

    if-lez v0, :cond_45

    long-to-double v0, v7

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    iget-wide v2, v6, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    long-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_45

    :cond_43
    const/4 v0, 0x1

    return v0

    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method public final isIgnorePackage(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 305
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v1, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public isSuspiciousAlarm(IJILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_c

    .line 338
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_c
    sub-long/2addr p2, v1

    .line 341
    iget-wide v1, p0, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long p1, p2, v1

    if-ltz p1, :cond_14

    return v0

    .line 344
    :cond_14
    sget-object p1, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p1, p5, p2}, Lcom/android/server/alarm/AppSyncInfo;->containsPackageAsUser(Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isSystemApplication(I)Z
    .registers 2

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-lez p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public isTargetApplication(ILjava/lang/String;)Z
    .registers 7

    .line 359
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 363
    :cond_8
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v2, 0x0

    .line 366
    :try_start_d
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_13} :catch_13

    :catch_13
    if-nez v2, :cond_16

    return v1

    .line 373
    :cond_16
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo;->isSystemApplication(I)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 374
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    .line 379
    :cond_37
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AppSyncInfo;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    return v1

    .line 383
    :cond_3e
    invoke-static {p1, p2}, Lcom/android/server/alarm/AppSyncInfo;->isActivePackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    return v1

    .line 387
    :cond_45
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    :cond_5e
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 389
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    return v0

    .line 393
    :cond_6b
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 394
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    goto :goto_85

    :cond_84
    return v1

    :cond_85
    :goto_85
    return v0
.end method

.method public final removePackage(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    .line 885
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 886
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_e
    :goto_e
    return-void
.end method

.method public final removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    .line 876
    :cond_7
    monitor-enter p1

    .line 877
    :try_start_8
    invoke-virtual {p0, p2, p3}, Lcom/android/server/alarm/AppSyncInfo;->removePackage(Ljava/lang/String;Ljava/util/Collection;)V

    .line 878
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0

    :cond_10
    :goto_10
    return-void
.end method

.method public final swapPackage(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-nez p3, :cond_7

    goto :goto_13

    .line 849
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 850
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 852
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_13
    return-void
.end method

.method public final updateSuspiciousPolicy(Landroid/content/Context;)V
    .registers 15

    .line 950
    new-instance v0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    .line 951
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->isSCPMAvailable()Z

    move-result p1

    const-wide/32 v1, 0x493e0

    const-wide/16 v3, 0x2710

    if-nez p1, :cond_24

    .line 954
    iput-wide v3, p0, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 955
    iput-wide v1, p0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 956
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter p1

    .line 957
    :try_start_17
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 958
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_21

    .line 959
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    return-void

    :catchall_21
    move-exception p0

    .line 958
    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0

    .line 963
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getSuspiciousTimeLimitFromSCPM()J

    move-result-wide v5

    .line 964
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getInexactWindowFromSCPM()J

    move-result-wide v7

    .line 965
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getSuspiciousTagFromSCPM()Ljava/util/ArrayList;

    move-result-object p1

    .line 966
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getAllowlistPkgFromSCPM()Ljava/util/ArrayList;

    move-result-object v9

    .line 967
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getBlocklistPkgFromSCPM()Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-gez v12, :cond_3f

    goto :goto_40

    :cond_3f
    move-wide v3, v5

    .line 969
    :goto_40
    iput-wide v3, p0, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long v3, v7, v10

    if-gez v3, :cond_47

    goto :goto_48

    :cond_47
    move-wide v1, v5

    .line 970
    :goto_48
    iput-wide v1, p0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 974
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 976
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 977
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_7e

    .line 978
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    monitor-enter p1

    .line 979
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 980
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {p0, v9, v1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 981
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_7b

    .line 982
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_69
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 984
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 985
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_78

    .line 986
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    return-void

    :catchall_78
    move-exception p0

    .line 985
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0

    :catchall_7b
    move-exception p0

    .line 981
    :try_start_7c
    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0

    :catchall_7e
    move-exception p0

    .line 977
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public final updateSuspiciousTags()V
    .registers 4

    .line 928
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 929
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_8
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 931
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_24

    .line 932
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    monitor-enter v2

    .line 933
    :try_start_11
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 934
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_21

    .line 936
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    monitor-enter v1

    .line 937
    :try_start_1a
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 938
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p0

    :catchall_21
    move-exception p0

    .line 934
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p0

    .line 931
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method
