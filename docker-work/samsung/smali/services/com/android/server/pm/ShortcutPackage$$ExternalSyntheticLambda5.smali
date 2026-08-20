.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$PJU5gj5R8AbvJ9ODv1td9oOVTt0(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
