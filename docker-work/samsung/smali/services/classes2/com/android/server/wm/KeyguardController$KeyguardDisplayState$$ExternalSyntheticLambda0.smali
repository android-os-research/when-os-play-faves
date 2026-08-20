.class public final synthetic Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->$r8$lambda$7D6Vf0BnuQPZ0-EfbzNrErvE-BE(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
