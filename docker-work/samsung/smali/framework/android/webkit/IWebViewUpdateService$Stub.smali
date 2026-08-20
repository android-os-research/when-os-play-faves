.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final greylist-max-o TRANSACTION_changeProviderAndSetting:I = 0x3

.field static final greylist-max-o TRANSACTION_enableMultiProcess:I = 0x9

.field static final greylist-max-o TRANSACTION_getAllWebViewPackages:I = 0x5

.field static final greylist-max-o TRANSACTION_getCurrentWebViewPackage:I = 0x7

.field static final greylist-max-o TRANSACTION_getCurrentWebViewPackageName:I = 0x6

.field static final greylist-max-o TRANSACTION_getValidWebViewPackages:I = 0x4

.field static final greylist-max-o TRANSACTION_isMultiProcessEnabled:I = 0x8

.field static final greylist-max-o TRANSACTION_notifyRelroCreationCompleted:I = 0x1

.field static final greylist-max-o TRANSACTION_waitForAndGetProvider:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_4
    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    if-eqz v1, :cond_14

    .line 94
    move-object v1, v0

    check-cast v1, Landroid/webkit/IWebViewUpdateService;

    return-object v1

    .line 96
    :cond_14
    new-instance v1, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 105
    packed-switch p0, :pswitch_data_22

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 141
    :pswitch_5
    const-string v0, "enableMultiProcess"

    return-object v0

    .line 137
    :pswitch_8
    const-string v0, "isMultiProcessEnabled"

    return-object v0

    .line 133
    :pswitch_b
    const-string v0, "getCurrentWebViewPackage"

    return-object v0

    .line 129
    :pswitch_e
    const-string v0, "getCurrentWebViewPackageName"

    return-object v0

    .line 125
    :pswitch_11
    const-string v0, "getAllWebViewPackages"

    return-object v0

    .line 121
    :pswitch_14
    const-string v0, "getValidWebViewPackages"

    return-object v0

    .line 117
    :pswitch_17
    const-string v0, "changeProviderAndSetting"

    return-object v0

    .line 113
    :pswitch_1a
    const-string/jumbo v0, "waitForAndGetProvider"

    return-object v0

    .line 109
    :pswitch_1e
    const-string/jumbo v0, "notifyRelroCreationCompleted"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 100
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 444
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 152
    invoke-static {p1}, Landroid/webkit/IWebViewUpdateService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 156
    const-string v0, "android.webkit.IWebViewUpdateService"

    .line 157
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    :cond_d
    packed-switch p1, :pswitch_data_86

    .line 168
    packed-switch p1, :pswitch_data_8c

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 164
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return v1

    .line 231
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 232
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/webkit/IWebViewUpdateService$Stub;->enableMultiProcess(Z)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_85

    .line 223
    .end local v2    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->isMultiProcessEnabled()Z

    move-result v2

    .line 224
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    goto :goto_85

    .line 216
    .end local v2    # "_result":Z
    :pswitch_35
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 217
    .local v2, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_85

    .line 209
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_40
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    goto :goto_85

    .line 202
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 203
    .local v2, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 205
    goto :goto_85

    .line 195
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :pswitch_56
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 196
    .restart local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 198
    goto :goto_85

    .line 186
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/webkit/IWebViewUpdateService$Stub;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    goto :goto_85

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_73
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2

    .line 179
    .local v2, "_result":Landroid/webkit/WebViewProviderResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 181
    goto :goto_85

    .line 172
    .end local v2    # "_result":Landroid/webkit/WebViewProviderResponse;
    :pswitch_7e
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    nop

    .line 242
    :goto_85
    return v1

    :pswitch_data_86
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_73
        :pswitch_61
        :pswitch_56
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
