.class public final synthetic Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/SystemEventListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemEventListener;

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/chimera/SystemEventListener;->$r8$lambda$BxDAzmDvi8Oyg7AnpYG62geypbY(Lcom/android/server/chimera/SystemEventListener;IIZI[Ljava/lang/String;Z)V

    return-void
.end method
