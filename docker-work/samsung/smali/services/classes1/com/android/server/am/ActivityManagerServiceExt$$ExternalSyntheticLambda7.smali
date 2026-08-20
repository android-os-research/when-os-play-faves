.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->$r8$lambda$Z2pkOsOJKU4l5mzjyRdcOe-PU60(Landroid/content/IntentFilter;Ljava/lang/String;)V

    return-void
.end method
