.class public abstract Landroid/app/search/ISearchUiManager$Stub;
.super Landroid/os/Binder;
.source "ISearchUiManager.java"

# interfaces
.implements Landroid/app/search/ISearchUiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/ISearchUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/ISearchUiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSearchSession:I = 0x1

.field static final blacklist TRANSACTION_destroySearchSession:I = 0x4

.field static final blacklist TRANSACTION_notifyEvent:I = 0x3

.field static final blacklist TRANSACTION_query:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.app.search.ISearchUiManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/search/ISearchUiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchUiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.app.search.ISearchUiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/search/ISearchUiManager;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/app/search/ISearchUiManager;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/app/search/ISearchUiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/search/ISearchUiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_14

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string v0, "destroySearchSession"

    return-object v0

    .line 70
    :pswitch_8
    const-string/jumbo v0, "notifyEvent"

    return-object v0

    .line 66
    :pswitch_c
    const-string/jumbo v0, "query"

    return-object v0

    .line 62
    :pswitch_10
    const-string v0, "createSearchSession"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 247
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/app/search/ISearchUiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "android.app.search.ISearchUiManager"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    packed-switch p1, :pswitch_data_92

    .line 101
    packed-switch p1, :pswitch_data_98

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 145
    :pswitch_1c
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 146
    .local v2, "_arg0":Landroid/app/search/SearchSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/app/search/ISearchUiManager$Stub;->destroySearchSession(Landroid/app/search/SearchSessionId;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_90

    .line 132
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    :pswitch_2e
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 134
    .restart local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    sget-object v3, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/Query;

    .line 136
    .local v3, "_arg1":Landroid/app/search/Query;
    sget-object v4, Landroid/app/search/SearchTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTargetEvent;

    .line 137
    .local v4, "_arg2":Landroid/app/search/SearchTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/search/ISearchUiManager$Stub;->notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_90

    .line 119
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    .end local v3    # "_arg1":Landroid/app/search/Query;
    .end local v4    # "_arg2":Landroid/app/search/SearchTargetEvent;
    :pswitch_50
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 121
    .restart local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    sget-object v3, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/Query;

    .line 123
    .restart local v3    # "_arg1":Landroid/app/search/Query;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object v4

    .line 124
    .local v4, "_arg2":Landroid/app/search/ISearchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/search/ISearchUiManager$Stub;->query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_90

    .line 106
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    .end local v3    # "_arg1":Landroid/app/search/Query;
    .end local v4    # "_arg2":Landroid/app/search/ISearchCallback;
    :pswitch_72
    sget-object v2, Landroid/app/search/SearchContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchContext;

    .line 108
    .local v2, "_arg0":Landroid/app/search/SearchContext;
    sget-object v3, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchSessionId;

    .line 110
    .local v3, "_arg1":Landroid/app/search/SearchSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 111
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/search/ISearchUiManager$Stub;->createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    nop

    .line 156
    .end local v2    # "_arg0":Landroid/app/search/SearchContext;
    .end local v3    # "_arg1":Landroid/app/search/SearchSessionId;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_90
    return v1

    nop

    :pswitch_data_92
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_72
        :pswitch_50
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
