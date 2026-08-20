.class public final synthetic Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/server/wallpaper/ColorTheme;

.field public final synthetic f$1:Lcom/samsung/server/wallpaper/ColorThemeData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/server/wallpaper/ColorTheme;Lcom/samsung/server/wallpaper/ColorThemeData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/server/wallpaper/ColorTheme;

    iput-object p2, p0, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/server/wallpaper/ColorThemeData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/server/wallpaper/ColorTheme;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/server/wallpaper/ColorThemeData;

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/ColorTheme;->$r8$lambda$rzdt6ZyGnT19tuy7AUPKY1MzKks(Lcom/samsung/server/wallpaper/ColorTheme;Lcom/samsung/server/wallpaper/ColorThemeData;)V

    return-void
.end method
