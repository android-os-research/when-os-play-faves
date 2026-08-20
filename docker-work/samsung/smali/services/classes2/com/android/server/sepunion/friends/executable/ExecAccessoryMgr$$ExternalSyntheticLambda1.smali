.class public final synthetic Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$$ExternalSyntheticLambda1;
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

    check-cast p1, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->$r8$lambda$UB0PngBvrqV5YGEZ5ChsZZ16Abs(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
