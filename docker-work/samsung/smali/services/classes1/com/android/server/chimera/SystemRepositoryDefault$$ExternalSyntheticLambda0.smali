.class public final synthetic Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/SystemRepositoryDefault;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->$r8$lambda$j7wg5B57n-UfoNTVZo21HYPLZKY(Lcom/android/server/chimera/SystemRepositoryDefault;)V

    return-void
.end method
