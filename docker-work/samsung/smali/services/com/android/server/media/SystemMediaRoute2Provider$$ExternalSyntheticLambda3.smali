.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$3:Z

    iput p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$3:Z

    iget p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->$r8$lambda$oL4ahMLFFWeanwn1DOb_FtV4tAo(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
