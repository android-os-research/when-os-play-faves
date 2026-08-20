.class public final synthetic Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/RescueParty;->$r8$lambda$ThcfNNhKjaVct1ndTT8CpPD00i4(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
