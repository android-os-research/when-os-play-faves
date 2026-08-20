.class Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;
.super Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;
.source "GeolocSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

.field final synthetic val$callbackListener:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    .line 203
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    iput-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->val$callbackListener:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    .local p2, "sharingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 219
    .local v0, "sharingId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->val$callbackListener:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    .line 220
    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .registers 14
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sharingId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->val$callbackListener:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 214
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sharingId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->val$callbackListener:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 208
    return-void
.end method
