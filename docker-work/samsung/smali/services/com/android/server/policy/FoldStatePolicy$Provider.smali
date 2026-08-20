.class public final Lcom/android/server/policy/FoldStatePolicy$Provider;
.super Ljava/lang/Object;
.source "FoldStatePolicy.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStatePolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FoldStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;
    .registers 2

    .line 62
    invoke-static {}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$sfgetsInstance()Lcom/android/server/policy/FoldStatePolicy;

    move-result-object p0

    if-nez p0, :cond_e

    .line 63
    new-instance p0, Lcom/android/server/policy/FoldStatePolicy;

    invoke-direct {p0, p1}, Lcom/android/server/policy/FoldStatePolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$sfputsInstance(Lcom/android/server/policy/FoldStatePolicy;)V

    .line 65
    :cond_e
    invoke-static {}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$sfgetsInstance()Lcom/android/server/policy/FoldStatePolicy;

    move-result-object p0

    return-object p0
.end method
