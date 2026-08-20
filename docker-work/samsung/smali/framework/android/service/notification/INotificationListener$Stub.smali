.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final blacklist TRANSACTION_onActionClicked:I = 0x13

.field static final blacklist TRANSACTION_onAllowedAdjustmentsChanged:I = 0x15

.field static final blacklist TRANSACTION_onEdgeNotificationPosted:I = 0x17

.field static final blacklist TRANSACTION_onEdgeNotificationRemoved:I = 0x18

.field static final greylist-max-o TRANSACTION_onInterruptionFilterChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onListenerConnected:I = 0x1

.field static final greylist-max-o TRANSACTION_onListenerHintsChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onNotificationChannelGroupModification:I = 0x9

.field static final greylist-max-o TRANSACTION_onNotificationChannelModification:I = 0x8

.field static final blacklist TRANSACTION_onNotificationClicked:I = 0x14

.field static final blacklist TRANSACTION_onNotificationDirectReply:I = 0x11

.field static final blacklist TRANSACTION_onNotificationEnqueuedWithChannel:I = 0xa

.field static final blacklist TRANSACTION_onNotificationExpansionChanged:I = 0x10

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x16

.field static final greylist-max-o TRANSACTION_onNotificationPosted:I = 0x2

.field static final greylist-max-o TRANSACTION_onNotificationRankingUpdate:I = 0x5

.field static final greylist-max-o TRANSACTION_onNotificationRemoved:I = 0x4

.field static final greylist-max-o TRANSACTION_onNotificationSnoozedUntilContext:I = 0xb

.field static final blacklist TRANSACTION_onNotificationVisibilityChanged:I = 0xf

.field static final blacklist TRANSACTION_onNotificationsSeen:I = 0xc

.field static final blacklist TRANSACTION_onPanelHidden:I = 0xe

.field static final blacklist TRANSACTION_onPanelRevealed:I = 0xd

.field static final blacklist TRANSACTION_onStatusBarIconsBehaviorChanged:I = 0x3

.field static final blacklist TRANSACTION_onSuggestedReplySent:I = 0x12


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 107
    if-nez p0, :cond_4

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_4
    const-string v0, "android.service.notification.INotificationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 111
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_14

    .line 112
    move-object v1, v0

    check-cast v1, Landroid/service/notification/INotificationListener;

    return-object v1

    .line 114
    :cond_14
    new-instance v1, Landroid/service/notification/INotificationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 123
    packed-switch p0, :pswitch_data_66

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 219
    :pswitch_5
    const-string/jumbo v0, "onEdgeNotificationRemoved"

    return-object v0

    .line 215
    :pswitch_9
    const-string/jumbo v0, "onEdgeNotificationPosted"

    return-object v0

    .line 211
    :pswitch_d
    const-string/jumbo v0, "onNotificationFeedbackReceived"

    return-object v0

    .line 207
    :pswitch_11
    const-string/jumbo v0, "onAllowedAdjustmentsChanged"

    return-object v0

    .line 203
    :pswitch_15
    const-string/jumbo v0, "onNotificationClicked"

    return-object v0

    .line 199
    :pswitch_19
    const-string/jumbo v0, "onActionClicked"

    return-object v0

    .line 195
    :pswitch_1d
    const-string/jumbo v0, "onSuggestedReplySent"

    return-object v0

    .line 191
    :pswitch_21
    const-string/jumbo v0, "onNotificationDirectReply"

    return-object v0

    .line 187
    :pswitch_25
    const-string/jumbo v0, "onNotificationExpansionChanged"

    return-object v0

    .line 183
    :pswitch_29
    const-string/jumbo v0, "onNotificationVisibilityChanged"

    return-object v0

    .line 179
    :pswitch_2d
    const-string/jumbo v0, "onPanelHidden"

    return-object v0

    .line 175
    :pswitch_31
    const-string/jumbo v0, "onPanelRevealed"

    return-object v0

    .line 171
    :pswitch_35
    const-string/jumbo v0, "onNotificationsSeen"

    return-object v0

    .line 167
    :pswitch_39
    const-string/jumbo v0, "onNotificationSnoozedUntilContext"

    return-object v0

    .line 163
    :pswitch_3d
    const-string/jumbo v0, "onNotificationEnqueuedWithChannel"

    return-object v0

    .line 159
    :pswitch_41
    const-string/jumbo v0, "onNotificationChannelGroupModification"

    return-object v0

    .line 155
    :pswitch_45
    const-string/jumbo v0, "onNotificationChannelModification"

    return-object v0

    .line 151
    :pswitch_49
    const-string/jumbo v0, "onInterruptionFilterChanged"

    return-object v0

    .line 147
    :pswitch_4d
    const-string/jumbo v0, "onListenerHintsChanged"

    return-object v0

    .line 143
    :pswitch_51
    const-string/jumbo v0, "onNotificationRankingUpdate"

    return-object v0

    .line 139
    :pswitch_55
    const-string/jumbo v0, "onNotificationRemoved"

    return-object v0

    .line 135
    :pswitch_59
    const-string/jumbo v0, "onStatusBarIconsBehaviorChanged"

    return-object v0

    .line 131
    :pswitch_5d
    const-string/jumbo v0, "onNotificationPosted"

    return-object v0

    .line 127
    :pswitch_61
    const-string/jumbo v0, "onListenerConnected"

    return-object v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 118
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 860
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 230
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const-string v0, "android.service.notification.INotificationListener"

    .line 235
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 236
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    :cond_d
    packed-switch p1, :pswitch_data_1e4

    .line 246
    packed-switch p1, :pswitch_data_1ea

    .line 488
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 242
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v1

    .line 477
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 481
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 482
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 484
    goto/16 :goto_1e3

    .line 465
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 469
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 470
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 472
    goto/16 :goto_1e3

    .line 453
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 457
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 458
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V

    .line 460
    goto/16 :goto_1e3

    .line 447
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_68
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onAllowedAdjustmentsChanged()V

    .line 448
    goto/16 :goto_1e3

    .line 440
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationClicked(Ljava/lang/String;)V

    .line 443
    goto/16 :goto_1e3

    .line 428
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 432
    .local v3, "_arg1":Landroid/app/Notification$Action;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 433
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 435
    goto/16 :goto_1e3

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/Notification$Action;
    .end local v4    # "_arg2":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 420
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 423
    goto/16 :goto_1e3

    .line 408
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    .end local v4    # "_arg2":I
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationDirectReply(Ljava/lang/String;)V

    .line 411
    goto/16 :goto_1e3

    .line 396
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 400
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 401
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 403
    goto/16 :goto_1e3

    .line 386
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 389
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 391
    goto/16 :goto_1e3

    .line 380
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_d9
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onPanelHidden()V

    .line 381
    goto/16 :goto_1e3

    .line 373
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onPanelRevealed(I)V

    .line 376
    goto/16 :goto_1e3

    .line 365
    .end local v2    # "_arg0":I
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 366
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationsSeen(Ljava/util/List;)V

    .line 368
    goto/16 :goto_1e3

    .line 355
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 357
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V

    .line 360
    goto/16 :goto_1e3

    .line 343
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 345
    .restart local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 347
    .local v3, "_arg1":Landroid/app/NotificationChannel;
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 348
    .local v4, "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 350
    goto/16 :goto_1e3

    .line 329
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/app/NotificationChannel;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 333
    .local v3, "_arg1":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 335
    .local v4, "_arg2":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 336
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 338
    goto/16 :goto_1e3

    .line 315
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/app/NotificationChannelGroup;
    .end local v5    # "_arg3":I
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 319
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 321
    .local v4, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 322
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 324
    goto/16 :goto_1e3

    .line 307
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/app/NotificationChannel;
    .end local v5    # "_arg3":I
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    .line 310
    goto :goto_1e3

    .line 299
    .end local v2    # "_arg0":I
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    .line 302
    goto :goto_1e3

    .line 291
    .end local v2    # "_arg0":I
    :pswitch_180
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 292
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 294
    goto :goto_1e3

    .line 277
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 279
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 281
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationStats;

    .line 283
    .local v4, "_arg2":Landroid/service/notification/NotificationStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 284
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 286
    goto :goto_1e3

    .line 269
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationStats;
    .end local v5    # "_arg3":I
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 270
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onStatusBarIconsBehaviorChanged(Z)V

    .line 272
    goto :goto_1e3

    .line 259
    .end local v2    # "_arg0":Z
    :pswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 261
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 262
    .restart local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 264
    goto :goto_1e3

    .line 251
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_1d4
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 252
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 254
    nop

    .line 491
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_1e3
    return v1

    :pswitch_data_1e4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1d4
        :pswitch_1bd
        :pswitch_1b2
        :pswitch_18f
        :pswitch_180
        :pswitch_175
        :pswitch_16a
        :pswitch_14a
        :pswitch_12a
        :pswitch_10a
        :pswitch_f6
        :pswitch_ea
        :pswitch_de
        :pswitch_d9
        :pswitch_c9
        :pswitch_b5
        :pswitch_a9
        :pswitch_91
        :pswitch_79
        :pswitch_6d
        :pswitch_68
        :pswitch_4c
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method
