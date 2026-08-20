.class public abstract Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;
.super Landroid/os/Binder;
.source "IContentSuggestionsService.java"

# interfaces
.implements Landroid/service/contentsuggestions/IContentSuggestionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentsuggestions/IContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentsuggestions/IContentSuggestionsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_classifyContentSelections:I = 0x3

.field static final blacklist TRANSACTION_notifyInteraction:I = 0x4

.field static final blacklist TRANSACTION_provideContextImage:I = 0x1

.field static final blacklist TRANSACTION_suggestContentSelections:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.contentsuggestions.IContentSuggestionsService"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.service.contentsuggestions.IContentSuggestionsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/contentsuggestions/IContentSuggestionsService;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_14

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "notifyInteraction"

    return-object v0

    .line 74
    :pswitch_9
    const-string v0, "classifyContentSelections"

    return-object v0

    .line 70
    :pswitch_c
    const-string/jumbo v0, "suggestContentSelections"

    return-object v0

    .line 66
    :pswitch_10
    const-string/jumbo v0, "provideContextImage"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 235
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.service.contentsuggestions.IContentSuggestionsService"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_7e

    .line 105
    packed-switch p1, :pswitch_data_84

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 144
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 147
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    goto :goto_7c

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_2f
    sget-object v2, Landroid/app/contentsuggestions/ClassificationsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/contentsuggestions/ClassificationsRequest;

    .line 136
    .local v2, "_arg0":Landroid/app/contentsuggestions/ClassificationsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IClassificationsCallback;

    move-result-object v3

    .line 137
    .local v3, "_arg1":Landroid/app/contentsuggestions/IClassificationsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 139
    goto :goto_7c

    .line 124
    .end local v2    # "_arg0":Landroid/app/contentsuggestions/ClassificationsRequest;
    .end local v3    # "_arg1":Landroid/app/contentsuggestions/IClassificationsCallback;
    :pswitch_46
    sget-object v2, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/contentsuggestions/SelectionsRequest;

    .line 126
    .local v2, "_arg0":Landroid/app/contentsuggestions/SelectionsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/contentsuggestions/ISelectionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/ISelectionsCallback;

    move-result-object v3

    .line 127
    .local v3, "_arg1":Landroid/app/contentsuggestions/ISelectionsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 129
    goto :goto_7c

    .line 110
    .end local v2    # "_arg0":Landroid/app/contentsuggestions/SelectionsRequest;
    .end local v3    # "_arg1":Landroid/app/contentsuggestions/ISelectionsCallback;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    .line 114
    .local v3, "_arg1":Landroid/hardware/HardwareBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 117
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V

    .line 119
    nop

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/HardwareBuffer;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
