.class public final synthetic Lcom/android/server/devicepolicy/Owners$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners;->$r8$lambda$aOEpA4tsmqYK03_hbG-6GnDswWA(Landroid/content/pm/UserInfo;)I

    move-result p0

    return p0
.end method
