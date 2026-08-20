.class public Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackagePreferences"
.end annotation


# instance fields
.field public allowEdgeLighting:Z

.field public allowSubDisplayNoti:Z

.field public appLockScreenVisibility:I

.field public bubblePreference:I

.field public callStackForImportance:Ljava/lang/String;

.field public channels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public defaultAppLockedImportance:Z

.field public delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

.field public fixedImportance:Z

.field public groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field public hasSentInvalidMessage:Z

.field public hasSentValidBubble:Z

.field public hasSentValidMessage:Z

.field public importance:I

.field public isAllowPopup:Z

.field public isNotificationAlertsEnabled:Z

.field public lockedAppFields:I

.field public migrateToPm:Z

.field public muteByWearable:I

.field public oemLockedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oemLockedImportance:Z

.field public pkg:Ljava/lang/String;

.field public priority:I

.field public reminder:Z

.field public showBadge:Z

.field public uid:I

.field public userDemotedMsgApp:Z

.field public visibility:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 3537
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v0, -0x3e8

    .line 3538
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/4 v1, 0x0

    .line 3539
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 3540
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 v2, 0x1

    .line 3541
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 3542
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 3543
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 3547
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 3548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 3550
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 3551
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 3553
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 3554
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 3556
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 3557
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 3559
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 3561
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    .line 3563
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    const/4 v3, -0x1

    .line 3565
    iput v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    const/4 v3, 0x0

    .line 3567
    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->callStackForImportance:Ljava/lang/String;

    .line 3569
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 3571
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 3573
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 3575
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    .line 3577
    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 3578
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 3579
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/PreferencesHelper$PackagePreferences-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDelegate(Ljava/lang/String;I)Z
    .registers 3

    .line 3582
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper$Delegate;->isAllowed(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
