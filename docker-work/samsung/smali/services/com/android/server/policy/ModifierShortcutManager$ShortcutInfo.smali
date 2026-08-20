.class public final Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ModifierShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortcutInfo"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 3

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;->title:Ljava/lang/String;

    .line 380
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    return-void
.end method
