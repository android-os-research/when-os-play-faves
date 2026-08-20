.class public abstract Lcom/sec/ims/ss/IImsUtEventListener$Stub;
.super Landroid/os/Binder;
.source "IImsUtEventListener.java"

# interfaces
.implements Lcom/sec/ims/ss/IImsUtEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/IImsUtEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/IImsUtEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onUtConfigurationCallBarringQueried:I = 0x7

.field static final TRANSACTION_onUtConfigurationCallForwardQueried:I = 0x6

.field static final TRANSACTION_onUtConfigurationCallWaitingQueried:I = 0x5

.field static final TRANSACTION_onUtConfigurationQueried:I = 0x3

.field static final TRANSACTION_onUtConfigurationQueryFailed:I = 0x2

.field static final TRANSACTION_onUtConfigurationUpdateFailed:I = 0x1

.field static final TRANSACTION_onUtConfigurationUpdated:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.sec.ims.ss.IImsUtEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IImsUtEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "com.sec.ims.ss.IImsUtEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/ss/IImsUtEventListener;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/ss/IImsUtEventListener;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Lcom/sec/ims/ss/IImsUtEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/ss/IImsUtEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "com.sec.ims.ss.IImsUtEventListener"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_d
    packed-switch p1, :pswitch_data_ac

    .line 77
    packed-switch p1, :pswitch_data_b2

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 146
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    .line 149
    .local v3, "_arg1":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto/16 :goto_ab

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/os/Bundle;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    .line 138
    .restart local v3    # "_arg1":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_ab

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/os/Bundle;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 127
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationCallWaitingQueried(IZ)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_ab

    .line 115
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationUpdated(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_ab

    .line 104
    .end local v2    # "_arg0":I
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 107
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    goto :goto_ab

    .line 93
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 96
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    goto :goto_ab

    .line 82
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 85
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    nop

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_ab
    return v1

    :pswitch_data_ac
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_95
        :pswitch_7f
        :pswitch_69
        :pswitch_5b
        :pswitch_49
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
