.class public Lcom/android/internal/telephony/euicc/EuiccOperation;
.super Ljava/lang/Object;
.source "EuiccOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccOperation$Action;
    }
.end annotation


# static fields
.field static final blacklist ACTION_DOWNLOAD_CONFIRMATION_CODE:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_DEACTIVATE_SIM:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_NETWORK_LOCKED:I = 0xb
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_NO_EUICC:I = 0x65
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_NO_PRIVILEGES:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_NO_PRIVILEGES_OR_DEACTIVATE_SIM_CHECK_METADATA:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_RESOLVABLE_ERRORS:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_GET_DEFAULT_LIST_DEACTIVATE_SIM:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_GET_METADATA_DEACTIVATE_SIM:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_SWITCH_DEACTIVATE_SIM:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_SWITCH_NO_EUICC:I = 0x66
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist ACTION_SWITCH_NO_PRIVILEGES:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/euicc/EuiccOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAction:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mCallingToken:J

.field private final blacklist mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field private final blacklist mResolvableErrors:I

.field private final blacklist mSubscriptionId:I

.field private final blacklist mSwitchAfterDownload:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccOperation$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V
    .registers 8

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 257
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 258
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 259
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 260
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 261
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 262
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V
    .registers 9

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 242
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 243
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 244
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 245
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 246
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 247
    iput p8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 268
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method private static blacklist fail(Landroid/app/PendingIntent;)V
    .registers 4

    .line 685
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public static blacklist forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x8

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 14

    .line 143
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forDownloadNoEuicc(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 14

    .line 222
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x65

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 14

    .line 165
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x9

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 16

    .line 193
    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V

    return-object v9
.end method

.method static blacklist forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 12

    .line 199
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13

    .line 130
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13

    .line 206
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forSwitchNoEuicc(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13

    .line 228
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x66

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static blacklist forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13

    .line 213
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method private blacklist resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 503
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    goto :goto_21

    .line 505
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, p2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v2, p1

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    :goto_21
    return-void
.end method

.method private blacklist resolvedDownloadDeactivateSim(IIZLandroid/app/PendingIntent;)V
    .registers 14

    if-eqz p3, :cond_15

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_18

    .line 430
    :cond_15
    invoke-static {p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_18
    return-void
.end method

.method private blacklist resolvedDownloadNoEuicc(IIZLandroid/app/PendingIntent;)V
    .registers 18

    move-object v0, p0

    if-eqz p3, :cond_25

    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 634
    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget-object v5, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-wide v3, v11

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 645
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_20
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw v0

    .line 649
    :cond_25
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_28
    return-void
.end method

.method private blacklist resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V
    .registers 17

    move-object v0, p0

    if-eqz p2, :cond_25

    .line 438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 447
    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v1

    move v1, p1

    move-wide v3, v11

    move-object/from16 v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 458
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_20
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    throw v0

    .line 462
    :cond_25
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_28
    return-void
.end method

.method private blacklist resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IIZLandroid/app/PendingIntent;)V
    .registers 18

    move-object v0, p0

    if-eqz p3, :cond_25

    .line 470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 476
    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget-object v5, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-wide v3, v11

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivilegedCheckMetadata(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 487
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_20
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw v0

    .line 491
    :cond_25
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_28
    return-void
.end method

.method private blacklist resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 16

    .line 524
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const-string v0, "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

    .line 525
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 529
    :goto_13
    iget v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_26

    const-string v1, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 530
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v2

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :cond_27
    :goto_27
    if-nez v0, :cond_2d

    .line 540
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    goto :goto_49

    .line 542
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, v1}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v3

    const-string v0, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    .line 545
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x1

    move v4, p1

    move-object v10, p2

    move-object v11, p3

    .line 543
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    :goto_49
    return-void
.end method

.method private blacklist resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V
    .registers 5

    if-eqz p2, :cond_d

    .line 561
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_10

    .line 568
    :cond_d
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_10
    return-void
.end method

.method private blacklist resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V
    .registers 10

    if-eqz p2, :cond_11

    .line 402
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_14

    .line 410
    :cond_11
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_14
    return-void
.end method

.method private blacklist resolvedSwitchDeactivateSim(IIZLandroid/app/PendingIntent;Z)V
    .registers 14

    if-eqz p3, :cond_13

    .line 577
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    .line 578
    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move v3, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto :goto_16

    .line 588
    :cond_13
    invoke-static {p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_16
    return-void
.end method

.method private blacklist resolvedSwitchNoEuicc(IIZLandroid/app/PendingIntent;Z)V
    .registers 18

    move-object v0, p0

    if-eqz p3, :cond_24

    .line 657
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 665
    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget v5, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-wide v3, v10

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    .line 675
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_1f
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    throw v0

    .line 679
    :cond_24
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_27
    return-void
.end method

.method private blacklist resolvedSwitchNoPrivileges(IIZLandroid/app/PendingIntent;Z)V
    .registers 18

    move-object v0, p0

    if-eqz p3, :cond_24

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 604
    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    .line 605
    iget v5, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-wide v3, v10

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    .line 615
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_1f
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v0

    .line 619
    :cond_24
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    :goto_27
    return-void
.end method


# virtual methods
.method public blacklist continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 16

    .line 298
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    const/16 v1, 0x65

    const-string v2, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    const/4 v3, 0x0

    const-string v4, "android.service.euicc.extra.RESOLUTION_CONSENT"

    if-eq v0, v1, :cond_ad

    const/16 v1, 0x66

    const-string v5, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    if-eq v0, v1, :cond_9a

    packed-switch v0, :pswitch_data_ba

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EuiccOperation"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 320
    :pswitch_33
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 322
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 319
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IIZLandroid/app/PendingIntent;)V

    goto/16 :goto_b8

    :pswitch_40
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 327
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_b8

    .line 331
    :pswitch_4b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto/16 :goto_b8

    .line 354
    :pswitch_50
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 358
    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 362
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 361
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoPrivileges(IIZLandroid/app/PendingIntent;Z)V

    goto :goto_b8

    .line 340
    :pswitch_63
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 344
    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 348
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 347
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchDeactivateSim(IIZLandroid/app/PendingIntent;Z)V

    goto :goto_b8

    .line 335
    :pswitch_76
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 334
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V

    goto :goto_b8

    .line 315
    :pswitch_7e
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V

    goto :goto_b8

    .line 308
    :pswitch_86
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 310
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 307
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadDeactivateSim(IIZLandroid/app/PendingIntent;)V

    goto :goto_b8

    .line 303
    :pswitch_92
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V

    goto :goto_b8

    .line 378
    :cond_9a
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 382
    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 386
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 385
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoEuicc(IIZLandroid/app/PendingIntent;Z)V

    goto :goto_b8

    .line 368
    :cond_ad
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 372
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 371
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoEuicc(IIZLandroid/app/PendingIntent;)V

    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_92
        :pswitch_86
        :pswitch_7e
        :pswitch_76
        :pswitch_63
        :pswitch_50
        :pswitch_4b
        :pswitch_40
        :pswitch_33
    .end packed-switch
.end method

.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 277
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
