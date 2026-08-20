.class public final synthetic Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    iput p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;->f$3:Z

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->$r8$lambda$g991UWnPXEItk42AnMVnV0neelQ(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IIZLjava/lang/String;)V

    return-void
.end method
