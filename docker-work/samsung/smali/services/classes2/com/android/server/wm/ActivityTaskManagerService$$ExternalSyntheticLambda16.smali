.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$9eZij5pKjqlgH-t4CKrfydnl8PE(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
