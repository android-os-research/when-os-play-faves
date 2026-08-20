.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;->f$0:[Z

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$Ui53cDHU4-qulL_9oXe7cFGopdE([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
