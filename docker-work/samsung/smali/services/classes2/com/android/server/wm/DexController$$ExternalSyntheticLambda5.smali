.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DexController;->$r8$lambda$PwY6Z9tiYWm8QOwAQW6g4ol9Ojo(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
