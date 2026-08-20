.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->$r8$lambda$pNj_4LdUdPQO7X4w-vUURI3zveI(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;Landroid/os/IBinder;)V

    return-void
.end method
