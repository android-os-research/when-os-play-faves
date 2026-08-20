.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/os/storage/StorageManager;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->$r8$lambda$pdcPVQw6hLQYz6M1qyY192043n4(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
