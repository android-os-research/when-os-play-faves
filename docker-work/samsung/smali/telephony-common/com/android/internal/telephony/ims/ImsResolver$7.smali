.class Lcom/android/internal/telephony/ims/ImsResolver$7;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 5

    .line 444
    new-instance p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)V

    return-object p0
.end method

.method public blacklist getServiceInterface()Ljava/lang/String;
    .registers 1

    const-string p0, "android.telephony.ims.compat.ImsService"

    return-object p0
.end method
