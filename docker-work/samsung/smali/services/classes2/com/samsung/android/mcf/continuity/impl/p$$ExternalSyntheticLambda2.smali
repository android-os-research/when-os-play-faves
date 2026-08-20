.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;->f$0:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/p;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
