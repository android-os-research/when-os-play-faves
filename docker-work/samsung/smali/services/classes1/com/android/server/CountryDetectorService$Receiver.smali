.class public final Lcom/android/server/CountryDetectorService$Receiver;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CountryDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field public final mKey:Landroid/os/IBinder;

.field public final mListener:Landroid/location/ICountryListener;

.field public final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    .line 64
    invoke-interface {p2}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/CountryDetectorService;->-$$Nest$mremoveListener(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 73
    instance-of v0, p1, Lcom/android/server/CountryDetectorService$Receiver;

    if-eqz v0, :cond_f

    .line 74
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/CountryDetectorService$Receiver;

    iget-object p1, p1, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getListener()Landroid/location/ICountryListener;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
