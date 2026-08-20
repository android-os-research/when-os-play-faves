.class public final synthetic Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->$r8$lambda$r_Jib3QBtpZO1yhhh4q4wDWwzsI(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
