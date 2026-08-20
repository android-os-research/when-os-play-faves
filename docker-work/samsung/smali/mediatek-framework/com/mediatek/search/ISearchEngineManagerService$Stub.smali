.class public abstract Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.super Landroid/os/Binder;
.source "ISearchEngineManagerService.java"

# interfaces
.implements Lcom/mediatek/search/ISearchEngineManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/ISearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailables:I = 0x1

.field static final blacklist TRANSACTION_getBestMatch:I = 0x3

.field static final blacklist TRANSACTION_getDefault:I = 0x2

.field static final blacklist TRANSACTION_getSearchEngine:I = 0x4

.field static final blacklist TRANSACTION_setDefault:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/search/ISearchEngineManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/search/ISearchEngineManagerService;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/mediatek/search/ISearchEngineManagerService;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
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

    .line 65
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

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
    packed-switch p1, :pswitch_data_76

    .line 77
    packed-switch p1, :pswitch_data_7c

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 120
    :pswitch_1c
    sget-object v2, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/search/SearchEngine;

    .line 121
    .local v2, "_arg0":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z

    move-result v3

    .line 123
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 125
    goto :goto_74

    .line 108
    .end local v2    # "_arg0":Lcom/mediatek/common/search/SearchEngine;
    .end local v3    # "_result":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v4

    .line 113
    .local v4, "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 115
    goto :goto_74

    .line 96
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v4

    .line 101
    .restart local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    goto :goto_74

    .line 88
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :pswitch_5e
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefault()Lcom/mediatek/common/search/SearchEngine;

    move-result-object v2

    .line 89
    .local v2, "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 91
    goto :goto_74

    .line 81
    .end local v2    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :pswitch_69
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getAvailables()Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 84
    nop

    .line 132
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_5e
        :pswitch_48
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
