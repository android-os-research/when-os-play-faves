.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda130;
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

    check-cast p1, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$IUQco-jT0vyBhZOFYRNYn6m6nvc(Landroid/app/admin/DevicePolicyDrawableResource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
