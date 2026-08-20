.class Lcom/android/internal/telephony/ims/ImsResolver$4;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;


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

    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$4;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSimState(Landroid/content/Context;I)I
    .registers 3

    .line 366
    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 370
    :cond_c
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    return p0
.end method
