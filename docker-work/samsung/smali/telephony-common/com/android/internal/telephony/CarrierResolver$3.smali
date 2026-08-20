.class Lcom/android/internal/telephony/CarrierResolver$3;
.super Landroid/telephony/PhoneStateListener;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierResolver;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$3;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    return-void
.end method
