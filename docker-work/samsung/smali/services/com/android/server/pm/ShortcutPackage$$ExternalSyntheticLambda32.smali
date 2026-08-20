.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$NY1JYnUg0pUP_en60nn5uMwV994(Ljava/util/Set;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
