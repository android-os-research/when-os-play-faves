.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda180;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/app/admin/DevicePolicyStringResource;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$tflWfSYEQaXnVxBF7i7cAzv-N2g(Landroid/app/admin/DevicePolicyStringResource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
