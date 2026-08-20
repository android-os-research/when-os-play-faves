.class public Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;
.super Ljava/lang/Object;
.source "NSDSResponseCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public response3gppAuthentication:Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;

.field public responseAuthorizeDevice:Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;

.field public responseGetMSISDN:Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;

.field public responseManageConnectivity:Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;

.field public responseManageLocationAndTC:Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;

.field public responseManagePushToken:Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;

.field public responseManageService:Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;

.field public responseRegisteredDevices:Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;

.field public responseRegisteredMSISDN:Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;

.field public responseServiceEntitlementStatus:Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->response3gppAuthentication:Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;

    .line 23
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseAuthorizeDevice:Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;

    .line 24
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManageConnectivity:Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;

    .line 25
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManageService:Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;

    .line 26
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseRegisteredDevices:Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;

    .line 27
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseRegisteredMSISDN:Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;

    .line 28
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManageLocationAndTC:Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;

    .line 29
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManagePushToken:Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;

    .line 30
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseGetMSISDN:Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;

    .line 31
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseServiceEntitlementStatus:Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 41
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->response3gppAuthentication:Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseAuthorizeDevice:Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManageConnectivity:Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManageService:Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseRegisteredDevices:Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseRegisteredMSISDN:Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManageLocationAndTC:Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseManagePushToken:Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseGetMSISDN:Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/NSDSResponseCollection;->responseServiceEntitlementStatus:Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
