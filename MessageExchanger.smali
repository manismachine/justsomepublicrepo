.class public Lcom/shareit/messenger/socket/MessageExchanger;
.super Ljava/lang/Object;
.source "MessageExchanger.java"
# interfaces
.implements Ljava/lang/Runnable;

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;,
        Lcom/shareit/messenger/socket/MessageExchanger$CarrierTimer;,
        Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;,
        Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;,
        Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;,
        Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;,
        Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;,
        Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;,
        Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;,
        Lcom/shareit/messenger/socket/MessageExchanger$Timer;,
        Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
    }
.end annotation

# static fields
.field private static final ALLOW_FROM_CARRIER:B = 0x20t
.field private static final ALLOW_FROM_INVALID_DATA:B = 0x22t
.field private static final ALLOW_FROM_VALID_DATA:B = 0x2ft
.field private static final BANDWIDTH_CONFORMED:B = 0x43t
.field private static final BUSY_HANDY:B = 0x32t
.field private static final CODE_RATE_CONFORMED:B = 0x42t
.field private static final COMMAND_BANDWIDTH:B = 0x11t
.field private static final COMMAND_CODE_RATE:B = 0x10t
.field private static final COMMAND_CONNECT:B = 0x1t
.field private static final COMMAND_DISCONNECT:B = 0x2t
.field private static final COMMAND_SCAN_FREQUENCIES:B = 0x9t
.field private static final COMMAND_SET_FREQUENCY:B = 0x4t
.field private static final COMMAND_SET_SCAN_FREQUENCY:B = 0x1at
.field private static final COMMAND_SET_TX_POWER:B = 0x5t
.field private static final COMMAND_SPREADING_FACTOR:B = 0x12t
.field private static final CONNECT_REPLY:B = 0x33t
.field private static final FREQUENCY_REPLY:B = 0x36t
.field private static final INVALID_CHECKSUM:B = 0x40t
.field private static final MULTI_SENDER_MESSAGE:B = 0x45t
.field private static MsgId:[B = null
.field private static final PING_REPLY:B = 0x3t
.field private static final POWER_REPLY:B = 0x37t
.field private static final READY_REPLY:B = 0x49t
.field private static final READ_LENGTH:I = 0x2
.field private static final SCAN_FREQUENCIES_REPLY:B = 0x3bt
.field private static final SCAN_REPLY:B = 0x33t
.field private static final SEND_SMS:B = 0x16t
.field private static final SET_SCAN_FREQUENCY_REPLY:B = 0x4ct
.field private static final SMS_DELIVERY_REPORT:B = 0x3dt
.field private static final SMS_DELIVERY_REPORT_MULTI_MSG:B = 0x46t
.field private static final SMS_RECEIVED:B = 0x48t
.field private static final SPREADING_FACTOR_CONFORMED:B = 0x44t
.field private static final STATUS_MESSAGE_DELIVERED_TOCLIENT:B = 0xbt
.field private static final STATUS_MESSAGE_DELIVERED_TOSERVER:B = 0x1t
.field private static final STATUS_MESSAGE_SENDINGFAILED_TOCLIENT:B = 0xct
.field private static final STATUS_RSSI_BATTERY:B = 0x35t
.field private static final TAG:Ljava/lang/String; = "Message Exchanger"
.field private static final WAIT_REPLY:B = 0x4at
.field private static volatile adfchecksum:Z
.field private static volatile checksum:Z
.field private static volatile deliverytries:I
.field private static volatile indexNumber:I
.field private static pingCount:I
.field public static readyReply:Z
.field public static volatile settingFrequency:Z
.field private static volatile tries:I
.field private static volatile wait:Z
.field private static volatile waitDR:Z

# instance fields
.field private carrierTimer:Lcom/shareit/messenger/socket/MessageExchanger$CarrierTimer;
.field private volatile checkMessage:Z
.field private volatile checkdeliveryreport:Z
.field private chorai:Ljava/lang/String;
.field private context:Landroid/app/Activity;
.field private delivertimer:Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
.field private volatile deliveryreport:[B
.field private volatile flag:Z
.field private frqtimer:Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
.field private gps:Lcom/shareit/messenger/app/GpsClass;
.field public volatile gpsThreadRunning:Z
.field private volatile gpsclzThreadRunning:Z
.field private gpsclztimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;
.field private gpstimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;
.field private is:Ljava/io/InputStream;
.field private volatile isConnected:Z
.field private volatile isMessageSentTimedOut:Z
.field private volatile isRunning:Z
.field private lambai:Ljava/lang/String;
.field private volatile msgTime:I
.field private msgTimer:Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;
.field private volatile msgTimerStart:Z
.field private volatile msgTries:I
.field private onchai:Ljava/lang/String;
.field private os:Ljava/io/OutputStream;
.field public recvrGL:I
.field private replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
.field private volatile settingBandwidth:Z
.field private volatile settingCodeRate:Z
.field private volatile settingPower:Z
.field private volatile settingScanFrequency:Z
.field private volatile settingSpreadingFactor:Z
.field private volatile start:Z
.field private stopSendingMessages:Z
.field private temp4:[B
.field private thread:Ljava/lang/Thread;
.field private timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
.field private timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
.field private waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
.field private waiterThreadDR:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;

# direct methods
.method static constructor <clinit>()V
    .locals 2
    .line 92
    const/4 v0, 0x0
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingFrequency:Z
    .line 102
    sput v0, Lcom/shareit/messenger/socket/MessageExchanger;->tries:I
    .line 103
    const/4 v1, 0x1
    sput v1, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    .line 104
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    .line 105
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->adfchecksum:Z
    .line 106
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    .line 107
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->waitDR:Z
    .line 119
    const/4 v1, 0x5
    sput v1, Lcom/shareit/messenger/socket/MessageExchanger;->pingCount:I
    .line 120
    sput v0, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    .line 124
    const/4 v1, 0x4
    new-array v1, v1, [B
    sput-object v1, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    .line 136
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->readyReply:Z
    return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dis"    # Ljava/io/InputStream;
    .param p3, "dos"    # Ljava/io/OutputStream;
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    .line 91
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingPower:Z
    .line 93
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingScanFrequency:Z
    .line 94
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingCodeRate:Z
    .line 95
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingBandwidth:Z
    .line 96
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingSpreadingFactor:Z
    .line 97
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->start:Z
    .line 98
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isRunning:Z
    .line 99
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isConnected:Z
    .line 100
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isMessageSentTimedOut:Z
    .line 101
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkdeliveryreport:Z
    .line 110
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$Timer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    .line 111
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->frqtimer:Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    .line 112
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimer:Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;
    .line 116
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    .line 117
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpstimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;
    .line 118
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->delivertimer:Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
    .line 121
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->flag:Z
    .line 122
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    .line 123
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimerStart:Z
    .line 128
    const/4 v1, 0x6
    new-array v1, v1, [B
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    .line 132
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    .line 133
    iput v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->recvrGL:I
    .line 134
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsThreadRunning:Z
    .line 135
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclzThreadRunning:Z
    .line 137
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->stopSendingMessages:Z
    .line 140
    iput-object p2, p0, Lcom/shareit/messenger/socket/MessageExchanger;->is:Ljava/io/InputStream;
    .line 141
    iput-object p3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    .line 142
    iput-object p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    .line 143
    new-instance v0, Ljava/lang/Thread;
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    iput-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->thread:Ljava/lang/Thread;
    .line 144
    return-void
.end method
.method private CloseGPS()V
    .locals 2
    .line 2824
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclzThreadRunning:Z
    if-eqz v0, :cond_1
    .line 2825
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclztimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;
    if-eqz v0, :cond_0
    .line 2826
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclztimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;
    invoke-virtual {v0}, Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;->stopThread()V
    .line 2828
    :cond_0
    const-wide/16 v0, 0x3e8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .line 2831
    goto :goto_0
    .line 2829
    :catch_0
    move-exception v0
    .line 2830
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    .line 2833
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    new-instance v0, Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;
    invoke-direct {v0, p0}, Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclztimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;
    .line 2834
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclztimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;
    invoke-virtual {v0}, Lcom/shareit/messenger/socket/MessageExchanger$GpsClzTmr;->startThread()V
    .line 2835
    return-void
.end method
.method static synthetic access$000(Lcom/shareit/messenger/socket/MessageExchanger;)Lcom/shareit/messenger/app/GpsClass;
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gps:Lcom/shareit/messenger/app/GpsClass;
    return-object v0
.end method
.method static synthetic access$100(Lcom/shareit/messenger/socket/MessageExchanger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    return v0
.end method
.method static synthetic access$1000(Lcom/shareit/messenger/socket/MessageExchanger;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    return-object v0
.end method
.method static synthetic access$102(Lcom/shareit/messenger/socket/MessageExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Z
    .line 34
    iput-boolean p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    return p1
.end method
.method static synthetic access$1100(Lcom/shareit/messenger/socket/MessageExchanger;III[B)V
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shareit/messenger/socket/MessageExchanger;->sendGPSMessage(III[B)V
    return-void
.end method
.method static synthetic access$1202(Lcom/shareit/messenger/socket/MessageExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Z
    .line 34
    iput-boolean p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isMessageSentTimedOut:Z
    return p1
.end method
.method static synthetic access$1308()I
    .locals 2
    .line 34
    sget v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    add-int/lit8 v1, v0, 0x1
    sput v1, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    return v0
.end method
.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z
    .line 34
    sput-boolean p0, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    return p0
.end method
.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z
    .line 34
    sput-boolean p0, Lcom/shareit/messenger/socket/MessageExchanger;->waitDR:Z
    return p0
.end method
.method static synthetic access$1600(Lcom/shareit/messenger/socket/MessageExchanger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimerStart:Z
    return v0
.end method
.method static synthetic access$1602(Lcom/shareit/messenger/socket/MessageExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Z
    .line 34
    iput-boolean p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimerStart:Z
    return p1
.end method
.method static synthetic access$1702(Lcom/shareit/messenger/socket/MessageExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Z
    .line 34
    iput-boolean p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->flag:Z
    return p1
.end method
.method static synthetic access$1800(Lcom/shareit/messenger/socket/MessageExchanger;)I
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTime:I
    return v0
.end method
.method static synthetic access$1802(Lcom/shareit/messenger/socket/MessageExchanger;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # I
    .line 34
    iput p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTime:I
    return p1
.end method
.method static synthetic access$1810(Lcom/shareit/messenger/socket/MessageExchanger;)I
    .locals 2
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTime:I
    add-int/lit8 v1, v0, -0x1
    iput v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTime:I
    return v0
.end method
.method static synthetic access$1900(Lcom/shareit/messenger/socket/MessageExchanger;)I
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTries:I
    return v0
.end method
.method static synthetic access$1902(Lcom/shareit/messenger/socket/MessageExchanger;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # I
    .line 34
    iput p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTries:I
    return p1
.end method
.method static synthetic access$1910(Lcom/shareit/messenger/socket/MessageExchanger;)I
    .locals 2
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTries:I
    add-int/lit8 v1, v0, -0x1
    iput v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTries:I
    return v0
.end method
.method static synthetic access$2000(Lcom/shareit/messenger/socket/MessageExchanger;)V
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 34
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendCommand()V
    return-void
.end method
.method static synthetic access$202(Lcom/shareit/messenger/socket/MessageExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Z
    .line 34
    iput-boolean p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->stopSendingMessages:Z
    return p1
.end method
.method static synthetic access$2100()I
    .locals 1
    .line 34
    sget v0, Lcom/shareit/messenger/socket/MessageExchanger;->tries:I
    return v0
.end method
.method static synthetic access$2108()I
    .locals 2
    .line 34
    sget v0, Lcom/shareit/messenger/socket/MessageExchanger;->tries:I
    add-int/lit8 v1, v0, 0x1
    sput v1, Lcom/shareit/messenger/socket/MessageExchanger;->tries:I
    return v0
.end method
.method static synthetic access$300(Lcom/shareit/messenger/socket/MessageExchanger;)V
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 34
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendMessages()V
    return-void
.end method
.method static synthetic access$400(Lcom/shareit/messenger/socket/MessageExchanger;)V
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->closeStreams()V
    return-void
.end method
.method static synthetic access$502(Lcom/shareit/messenger/socket/MessageExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Z
    .line 34
    iput-boolean p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsclzThreadRunning:Z
    return p1
.end method
.method static synthetic access$600(Lcom/shareit/messenger/socket/MessageExchanger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->chorai:Ljava/lang/String;
    return-object v0
.end method
.method static synthetic access$602(Lcom/shareit/messenger/socket/MessageExchanger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Ljava/lang/String;
    .line 34
    iput-object p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->chorai:Ljava/lang/String;
    return-object p1
.end method
.method static synthetic access$700(Lcom/shareit/messenger/socket/MessageExchanger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->lambai:Ljava/lang/String;
    return-object v0
.end method
.method static synthetic access$702(Lcom/shareit/messenger/socket/MessageExchanger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Ljava/lang/String;
    .line 34
    iput-object p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->lambai:Ljava/lang/String;
    return-object p1
.end method
.method static synthetic access$800(Lcom/shareit/messenger/socket/MessageExchanger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .line 34
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->onchai:Ljava/lang/String;
    return-object v0
.end method
.method static synthetic access$802(Lcom/shareit/messenger/socket/MessageExchanger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shareit/messenger/socket/MessageExchanger;
    .param p1, "x1"    # Ljava/lang/String;
    .line 34
    iput-object p1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->onchai:Ljava/lang/String;
    return-object p1
.end method
.method static synthetic access$900()I
    .locals 1
    .line 34
    sget v0, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    return v0
.end method
.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I
    .line 34
    sput p0, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    return p0
.end method
.method private closeStreams()V
    .locals 1
    .line 3134
    const/4 v0, -0x1
    :try_start_0
    sput-byte v0, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 3135
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->is:Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    .line 3136
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .line 3139
    goto :goto_0
    .line 3137
    :catch_0
    move-exception v0
    .line 3138
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    .line 3141
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
.method private forwardBitShifting([B)[B
    .locals 5
    .param p1, "temp"    # [B
    .line 3100
    const-string v0, "Message Exchanger"
    const-string v1, "Print sending shuffled array 1st"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3101
    invoke-static {p1}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3102
    const/4 v0, 0x0
    array-length v1, p1
    add-int/lit8 v1, v1, -0x1
    .line 3103
    .local v1, "n":I
    const-string v2, "Message Exchanger"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "n "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3104
    nop
    .line 3104
    .local v0, "j":I
    :goto_0
    array-length v2, p1
    div-int/lit8 v2, v2, 0x2
    if-ge v0, v2, :cond_0
    .line 3105
    aget-byte v2, p1, v0
    aget-byte v3, p1, v1
    invoke-static {v2, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->shiftAnd(BB)B
    move-result v2
    .line 3106
    .local v2, "tempByte":B
    aget-byte v3, p1, v1
    aget-byte v4, p1, v0
    invoke-static {v3, v4}, Lcom/shareit/messenger/socket/MessageExchanger;->shiftAnd(BB)B
    move-result v3
    aput-byte v3, p1, v1
    .line 3107
    aput-byte v2, p1, v0
    .line 3108
    add-int/lit8 v1, v1, -0x1
    .line 3104
    .end local v2    # "tempByte":B
    add-int/lit8 v0, v0, 0x1
    goto :goto_0
    .line 3110
    .end local v0    # "j":I
    :cond_0
    const-string v0, "Message Exchanger"
    const-string v2, "Print sending shuffled array 2nd"
    invoke-static {v0, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3111
    invoke-static {p1}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3112
    return-object p1
.end method
.method private generateNewMsg([B)[B
    .locals 6
    .param p1, "finalMsg"    # [B
    .line 776
    const/4 v0, 0x0
    const/16 v1, 0xc0
    array-length v2, p1
    rsub-int v2, v2, 0xbf
    .line 777
    .local v2, "extraBytesLength":I
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "extraBytesLength "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 778
    new-array v1, v1, [B
    .line 779
    .local v1, "tmpMsg":[B
    new-array v3, v2, [B
    .line 780
    .local v3, "nbytes":[B
    new-instance v4, Ljava/util/Random;
    invoke-direct {v4}, Ljava/util/Random;-><init>()V
    .line 781
    .local v4, "randomBytes":Ljava/util/Random;
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V
    .line 782
    invoke-static {v3}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 783
    array-length v5, p1
    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 784
    array-length v5, p1
    invoke-static {v3, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 785
    return-object v1
.end method
.method private getPower(I)I
    .locals 1
    .param p1, "rssi"    # I
    .line 554
    const/16 v0, 0x50
    if-lt p1, v0, :cond_0
    .line 555
    const/16 v0, 0x6a
    return v0
    .line 556
    :cond_0
    const/16 v0, 0x3c
    if-lt p1, v0, :cond_1
    .line 557
    const/16 v0, 0x6b
    return v0
    .line 558
    :cond_1
    const/16 v0, 0x28
    if-lt p1, v0, :cond_2
    .line 559
    const/16 v0, 0x6c
    return v0
    .line 560
    :cond_2
    const/16 v0, 0x14
    if-lt p1, v0, :cond_3
    .line 561
    const/16 v0, 0x6d
    return v0
    .line 563
    :cond_3
    const/16 v0, 0x6e
    return v0
.end method
.method private static printArray([B)V
    .locals 4
    .param p0, "array"    # [B
    .line 2978
    if-eqz p0, :cond_1
    .line 2979
    const-string v0, "MyTAG"
    const-string v1, "Bytes Print: "
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2980
    const-string v0, ""
    .line 2981
    .local v0, "print":Ljava/lang/String;
    const/4 v1, 0x0
    .line 2981
    .local v1, "i":I
    :goto_0
    array-length v2, p0
    if-ge v1, v2, :cond_0
    .line 2982
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "("
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ")"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-byte v3, p0, v1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    .line 2981
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    .line 2984
    .end local v1    # "i":I
    :cond_0
    const-string v1, "MyTAG"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Data: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2985
    .end local v0    # "print":Ljava/lang/String;
    goto :goto_1
    .line 2986
    :cond_1
    const-string v0, "MyTAG"
    const-string v1, "Print bytes are null"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2988
    :goto_1
    return-void
.end method
.method private processData([B)V
    .locals 4
    .param p1, "recv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 870
    if-eqz p1, :cond_1
    array-length v0, p1
    if-lez v0, :cond_1
    .line 871
    const/4 v0, 0x2
    new-array v0, v0, [B
    const/4 v1, 0x0
    aget-byte v2, p1, v1
    aput-byte v2, v0, v1
    const/4 v2, 0x1
    aget-byte v3, p1, v2
    aput-byte v3, v0, v2
    invoke-static {v0}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v0
    .line 872
    .local v0, "mobId":I
    sget v3, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    if-ne v0, v3, :cond_0
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    if-eqz v3, :cond_0
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->adfchecksum:Z
    if-eqz v3, :cond_0
    .line 873
    const/4 v2, 0x5
    sput v2, Lcom/shareit/messenger/socket/MessageExchanger;->pingCount:I
    .line 874
    sput-boolean v1, Lcom/shareit/messenger/socket/MessageExchanger;->adfchecksum:Z
    .line 875
    sput-boolean v1, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    .line 876
    invoke-direct {p0, p1}, Lcom/shareit/messenger/socket/MessageExchanger;->processDataAfterCheckSum([B)V
    goto :goto_0
    .line 878
    :cond_0
    sget v3, Lcom/shareit/messenger/socket/MessageExchanger;->pingCount:I
    sub-int/2addr v3, v2
    sput v3, Lcom/shareit/messenger/socket/MessageExchanger;->pingCount:I
    .line 881
    :goto_0
    sget v2, Lcom/shareit/messenger/socket/MessageExchanger;->pingCount:I
    if-gtz v2, :cond_1
    .line 882
    iput-boolean v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->start:Z
    .line 883
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->closeStreams()V
    .line 884
    const-string v1, "Message Exchanger"
    const-string v2, "Ping timed out"
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 887
    .end local v0    # "mobId":I
    :cond_1
    return-void
.end method
.method private processDataAfterCheckSum([B)V
    .locals 17
    .param p1, "recv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    move-object/from16 v0, p0
    .line 891
    move-object/from16 v1, p1
    const-string v2, "CheckSumFF"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "recv[2] byte "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v4, 0x2
    aget-byte v5, v1, v4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 892
    aget-byte v2, v1, v4
    const/4 v3, 0x4
    const/4 v5, 0x3
    const/4 v6, 0x5
    const/4 v7, 0x1
    const/4 v8, 0x0
    const/16 v9, 0x35
    if-ne v2, v9, :cond_1
    .line 893
    const-string v2, "Message Exchanger"
    const-string v9, "Ping Received"
    invoke-static {v2, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 894
    aget-byte v2, v1, v5
    sput-byte v2, Lcom/shareit/messenger/util/Util;->RssiSent:B
    .line 895
    aget-byte v2, v1, v3
    sput-byte v2, Lcom/shareit/messenger/util/Util;->BattVsent:B
    .line 896
    aget-byte v2, v1, v6
    sput-byte v2, Lcom/shareit/messenger/util/Util;->previousPower:B
    .line 897
    new-instance v2, Landroid/content/Intent;
    const-string v3, "edu.google.intent.BATTERY_RSSI_UPDATE"
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    .line 898
    .local v2, "update":Landroid/content/Intent;
    const-string v3, "battery"
    sget-byte v9, Lcom/shareit/messenger/util/Util;->BattVsent:B
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .line 899
    const-string v3, "rssi"
    sget-byte v9, Lcom/shareit/messenger/util/Util;->RssiSent:B
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .line 900
    iget-object v3, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    .line 901
    const-string v3, "power"
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "setted Power "
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-byte v10, v1, v6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v3, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 912
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->shouldChangePower_OnRSSI:Z
    if-eqz v3, :cond_0
    .line 913
    aget-byte v3, v1, v5
    invoke-direct {v0, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->getPower(I)I
    move-result v3
    aget-byte v6, v1, v6
    invoke-direct {v0, v3, v6}, Lcom/shareit/messenger/socket/MessageExchanger;->setPower(II)V
    .line 916
    :cond_0
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->connectInfo:Z
    .line 917
    new-array v3, v5, [B
    .line 918
    .local v3, "reply":[B
    sget v6, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v6}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v6
    invoke-static {v6, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 920
    aput-byte v5, v3, v4
    .line 921
    invoke-virtual {v0, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 923
    const-string v4, "Message Exchanger"
    const-string v5, "Ping Replied"
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 924
    .end local v2    # "update":Landroid/content/Intent;
    .end local v3    # "reply":[B
    goto/16 :goto_6
    .line 925
    :cond_1
    aget-byte v2, v1, v4
    const/16 v9, 0x2f
    if-eq v2, v9, :cond_29
    aget-byte v2, v1, v4
    const/16 v9, 0x20
    if-eq v2, v9, :cond_29
    aget-byte v2, v1, v4
    const/16 v9, 0x22
    if-ne v2, v9, :cond_2
    goto/16 :goto_5
    .line 935
    :cond_2
    aget-byte v2, v1, v4
    const/16 v9, 0x32
    if-ne v2, v9, :cond_3
    .line 936
    const-string v2, "Message Exchanger"
    const-string v3, "BUSY_HANDY Replied"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 937
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->shouldSendCommand:Z
    goto/16 :goto_6
    .line 939
    :cond_3
    aget-byte v2, v1, v4
    const/16 v9, 0x49
    if-ne v2, v9, :cond_9
    .line 940
    const-string v2, "Ready"
    const-string v3, "READY_REPLY Received."
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 941
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->shouldChangePower_OnRSSI:Z
    .line 944
    aput-byte v8, v1, v4
    .line 945
    array-length v2, v1
    if-le v2, v5, :cond_5
    .line 946
    aget-byte v2, v1, v5
    .line 947
    .local v2, "b":B
    sget-byte v3, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    if-ne v2, v3, :cond_4
    .line 948
    const-string v3, "CHANNEL_NUM"
    const-string v4, "true"
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_0
    .line 950
    :cond_4
    sput-byte v2, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setFrequencyMain()V
    .line 953
    :goto_0
    const-string v3, "CHANNEL_NUM from array"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "setting previous frequency"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v5, Lcom/shareit/messenger/util/Util;->channelarray:[I
    sget-byte v6, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    and-int/lit16 v6, v6, 0xff
    aget v5, v5, v6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 954
    sget-object v3, Lcom/shareit/messenger/util/Util;->channelarray:[I
    and-int/lit16 v4, v2, 0xff
    aget v3, v3, v4
    int-to-byte v3, v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getTXFreqForChannel(B)D
    .line 956
    .end local v2    # "b":B
    :cond_5
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThreadDR:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;
    if-eqz v2, :cond_6
    .line 957
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThreadDR:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;->stopThread()V
    .line 958
    const/4 v2, 0x0
    iput-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThreadDR:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;
    .line 961
    :cond_6
    sput-boolean v8, Lcom/shareit/messenger/app/MessagingActivity;->start:Z
    .line 962
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    iget-boolean v2, v2, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;->start:Z
    if-eqz v2, :cond_7
    .line 963
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;->stopThread()V
    .line 965
    :cond_7
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->frqtimer:Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    iget-boolean v2, v2, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;->start:Z
    if-eqz v2, :cond_8
    .line 966
    const-string v2, "FrqTimer"
    const-string v3, "freqtimer stopped"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 967
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->frqtimer:Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;->stopThread()V
    .line 969
    :cond_8
    sget-boolean v2, Lcom/shareit/messenger/socket/MessageExchanger;->readyReply:Z
    if-nez v2, :cond_2a
    .line 970
    const-string v2, "DeliveryTimer"
    const-string v3, "Readyreply command runs"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 971
    const-wide/16 v2, 0x32
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    .line 972
    new-instance v2, Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
    invoke-direct {v2, v0}, Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->delivertimer:Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
    .line 973
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->delivertimer:Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$DeliveryTimer;->startThread()V
    goto/16 :goto_6
    .line 976
    :cond_9
    aget-byte v2, v1, v4
    const/16 v9, 0x4a
    if-ne v2, v9, :cond_a
    .line 977
    sput-boolean v8, Lcom/shareit/messenger/app/MessagingActivity;->start:Z
    .line 978
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    iget-boolean v2, v2, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;->start:Z
    if-eqz v2, :cond_2a
    .line 979
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;->stopThread()V
    goto/16 :goto_6
    .line 982
    :cond_a
    aget-byte v2, v1, v4
    const/16 v9, 0x40
    if-ne v2, v9, :cond_b
    goto/16 :goto_6
    .line 986
    :cond_b
    aget-byte v2, v1, v4
    const/16 v9, 0x33
    if-ne v2, v9, :cond_c
    .line 987
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->scanReply:Z
    goto/16 :goto_6
    .line 990
    :cond_c
    aget-byte v2, v1, v4
    const/16 v9, 0x4c
    const/16 v10, 0x95
    if-ne v2, v9, :cond_10
    .line 991
    aget-byte v2, v1, v5
    .line 993
    .local v2, "rssi":I
    const-string v3, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "rssi "
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v3, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 994
    sget v3, Lcom/shareit/messenger/util/Util;->threshold:I
    if-le v2, v3, :cond_d
    .line 995
    sget v3, Lcom/shareit/messenger/util/Util;->channel:I
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 996
    .local v3, "channelBytes":[B
    sget-object v6, Lcom/shareit/messenger/util/Util;->rssiValues:[B
    sget v9, Lcom/shareit/messenger/util/Util;->index:I
    aget-byte v11, v3, v8
    aput-byte v11, v6, v9
    .line 997
    sget-object v6, Lcom/shareit/messenger/util/Util;->rssiValues:[B
    sget v9, Lcom/shareit/messenger/util/Util;->index:I
    add-int/2addr v9, v7
    aget-byte v11, v3, v7
    aput-byte v11, v6, v9
    .line 998
    sget-object v6, Lcom/shareit/messenger/util/Util;->rssiValues:[B
    sget v9, Lcom/shareit/messenger/util/Util;->index:I
    add-int/2addr v9, v4
    int-to-byte v4, v2
    aput-byte v4, v6, v9
    .line 999
    sget v4, Lcom/shareit/messenger/util/Util;->index:I
    add-int/2addr v4, v5
    sput v4, Lcom/shareit/messenger/util/Util;->index:I
    .line 1000
    const-string v4, "Message Exchanger"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Util.index "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v6, Lcom/shareit/messenger/util/Util;->index:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1001
    sget v4, Lcom/shareit/messenger/util/Util;->index:I
    if-ne v4, v10, :cond_d
    .line 1002
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 1003
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->sendScanMessage:Z
    .line 1007
    .end local v3    # "channelBytes":[B
    :cond_d
    const-string v3, "%.3f"
    new-array v4, v7, [Ljava/lang/Object;
    sget-object v5, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v5
    sget-wide v11, Lcom/shareit/messenger/util/Util;->spacing:D
    const-wide v13, 0x408f400000000000L    # 1000.0
    div-double/2addr v11, v13
    add-double/2addr v5, v11
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v5
    aput-object v5, v4, v8
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v3
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v3
    sput-object v3, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    .line 1008
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Util.startFrequency "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v5, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1009
    sget-object v3, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v3
    sget-object v5, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v5
    cmpl-double v8, v3, v5
    if-lez v8, :cond_e
    .line 1010
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 1011
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->sendScanMessage:Z
    goto :goto_1
    .line 1013
    :cond_e
    sget v3, Lcom/shareit/messenger/util/Util;->index:I
    if-eq v3, v10, :cond_f
    .line 1014
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->setScanningFrequency:Z
    .line 1017
    :cond_f
    :goto_1
    sget v3, Lcom/shareit/messenger/util/Util;->channel:I
    add-int/2addr v3, v7
    sput v3, Lcom/shareit/messenger/util/Util;->channel:I
    .line 1018
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "channel "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Lcom/shareit/messenger/util/Util;->channel:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1019
    .end local v2    # "rssi":I
    goto/16 :goto_6
    .line 1020
    :cond_10
    aget-byte v2, v1, v4
    const/16 v9, 0x3d
    const/4 v11, 0x6
    if-ne v2, v9, :cond_15
    .line 1021
    sput v8, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    .line 1022
    sget-boolean v2, Lcom/shareit/messenger/util/Util;->sendScanMessage:Z
    if-eqz v2, :cond_11
    .line 1023
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->sendScanMessage:Z
    .line 1024
    sget v2, Lcom/shareit/messenger/util/Util;->channel:I
    if-eq v2, v7, :cond_11
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->setScanningFrequency:Z
    .line 1026
    :cond_11
    new-array v2, v3, [B
    .line 1027
    .local v2, "recvMsgId":[B
    iput-boolean v7, v0, Lcom/shareit/messenger/socket/MessageExchanger;->checkdeliveryreport:Z
    .line 1028
    array-length v9, v1
    if-le v9, v4, :cond_12
    .line 1029
    iget-object v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    invoke-static {v1, v8, v9, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1030
    const-string v9, "delivery report"
    const-string v10, "in SMS_DELIVERY_REPORY COMMAND"
    invoke-static {v9, v10}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1031
    new-array v9, v4, [B
    .line 1032
    .local v9, "senDer":[B
    aget-byte v5, v1, v5
    aput-byte v5, v9, v8
    .line 1033
    aget-byte v5, v1, v3
    aput-byte v5, v9, v7
    .line 1035
    .end local v9    # "senDer":[B
    :cond_12
    array-length v5, v1
    if-le v5, v11, :cond_14
    .line 1036
    aget-byte v5, v1, v6
    const/16 v6, 0x63
    if-ne v5, v6, :cond_13
    .line 1037
    iput-boolean v7, v0, Lcom/shareit/messenger/socket/MessageExchanger;->stopSendingMessages:Z
    .line 1038
    const-string v5, "COMMAND_SEND"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "stopping "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v7, Lcom/shareit/messenger/util/Util;->shouldSendCommandDR:Z
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1040
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->shouldSendCommandDR:Z
    .line 1041
    sget-boolean v5, Lcom/shareit/messenger/socket/MessageExchanger;->waitDR:Z
    if-nez v5, :cond_13
    .line 1042
    new-instance v5, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;
    invoke-direct {v5, v0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v5, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThreadDR:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;
    .line 1043
    iget-object v5, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThreadDR:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;
    invoke-virtual {v5}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOutDR;->startThread()V
    .line 1046
    :cond_13
    invoke-static {v1, v11, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1047
    const-string v3, "DELIVERY22"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "MSG ID "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v3, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1050
    :cond_14
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v5
    int-to-long v5, v5
    invoke-static {v3, v5, v6, v4}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    .line 1051
    iget-object v3, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v4, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v5, "Message Received"
    invoke-static {v3, v4, v5}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 1053
    .end local v2    # "recvMsgId":[B
    goto/16 :goto_6
    .line 1054
    :cond_15
    aget-byte v2, v1, v4
    const/16 v12, 0x48
    const/16 v13, 0xd
    const/16 v14, 0xc
    const/16 v15, 0xa
    const/4 v10, -0x1
    if-ne v2, v12, :cond_18
    .line 1055
    aget-byte v2, v1, v6
    sget-byte v3, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    if-ne v2, v3, :cond_16
    .line 1056
    const-string v2, "CHANNEL_NUM MSG"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    aget-byte v7, v1, v6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v7, " true "
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v7, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_2
    .line 1059
    :cond_16
    const-string v2, "CHANNEL_NUM MSG"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    aget-byte v7, v1, v6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v7, " false "
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v7, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1060
    aget-byte v2, v1, v6
    sput-byte v2, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 1061
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setFrequencyMain()V
    .line 1063
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/shareit/messenger/socket/MessageExchanger;->receiveMessageAndSave([B)I
    move-result v2
    .line 1064
    .local v2, "conId":I
    if-lez v2, :cond_17
    .line 1065
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 1067
    .local v3, "temp":[B
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 1068
    .local v7, "send":[B
    sget v12, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v12}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v12
    invoke-static {v12, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1070
    aput-byte v9, v7, v4
    .line 1071
    array-length v4, v3
    invoke-static {v3, v8, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1072
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v4, v10}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    int-to-byte v4, v4
    aput-byte v4, v7, v6
    .line 1073
    iget-object v4, v0, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v5, v0, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v5, v5
    invoke-static {v4, v8, v7, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1074
    iget-object v4, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v4
    .line 1075
    .local v4, "myHandy":[B
    array-length v5, v4
    invoke-static {v4, v8, v7, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1077
    sget-byte v5, Lcom/shareit/messenger/util/Util;->RssiSent:B
    aput-byte v5, v7, v14
    .line 1078
    sget-byte v5, Lcom/shareit/messenger/util/Util;->BattVsent:B
    aput-byte v5, v7, v13
    .line 1079
    invoke-virtual {v0, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 1080
    const-string v5, "Message Exchanger"
    const-string v6, "Delivery Replied"
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1081
    invoke-static {v7}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 1082
    iget-object v5, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v8, "Message Received"
    invoke-static {v5, v6, v8}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 1085
    .end local v2    # "conId":I
    .end local v3    # "temp":[B
    .end local v4    # "myHandy":[B
    .end local v7    # "send":[B
    :cond_17
    goto/16 :goto_6
    .line 1086
    :cond_18
    aget-byte v2, v1, v4
    const/16 v3, 0x45
    if-ne v2, v3, :cond_1a
    .line 1087
    aget-byte v2, v1, v6
    sget-byte v3, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    if-ne v2, v3, :cond_19
    .line 1088
    const-string v2, "CHANNEL_NUM MSG"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    aget-byte v4, v1, v6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "multi true "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v4, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_3
    .line 1091
    :cond_19
    const-string v2, "CHANNEL_NUM MSG"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    aget-byte v4, v1, v6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "multi false "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v4, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1092
    aget-byte v2, v1, v6
    sput-byte v2, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setFrequencyMain()V
    .line 1095
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/shareit/messenger/socket/MessageExchanger;->receiveMultimsg([B)V
    goto/16 :goto_6
    .line 1098
    :cond_1a
    aget-byte v2, v1, v4
    const/16 v3, 0x36
    if-ne v2, v3, :cond_1f
    .line 1099
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    if-eqz v2, :cond_1b
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->stopThread()V
    .line 1100
    :cond_1b
    sget-boolean v2, Lcom/shareit/messenger/socket/MessageExchanger;->settingFrequency:Z
    if-eqz v2, :cond_2a
    .line 1101
    sget-boolean v2, Lcom/shareit/messenger/util/Util;->setFreqFrmServer:Z
    if-eqz v2, :cond_1c
    .line 1102
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setFreqFrmServer:Z
    .line 1103
    const-wide/16 v2, 0x64
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    .line 1104
    const/16 v2, 0xe
    new-array v2, v2, [B
    .line 1105
    .local v2, "send":[B
    sget v3, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    invoke-static {v3, v8, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1107
    aput-byte v9, v2, v4
    .line 1108
    const/16 v3, 0x64
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 1109
    .restart local v3    # "temp":[B
    sget v12, Lcom/shareit/messenger/util/Util;->messageId:I
    invoke-static {v12}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v12
    .line 1110
    .local v12, "myVary":[B
    array-length v7, v3
    invoke-static {v3, v8, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1111
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v7, v10}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v7
    int-to-byte v7, v7
    aput-byte v7, v2, v6
    .line 1112
    array-length v7, v12
    invoke-static {v12, v8, v2, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1114
    iget-object v7, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v7
    .line 1115
    .local v7, "handy":[B
    array-length v11, v7
    invoke-static {v7, v8, v2, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1116
    sget-byte v11, Lcom/shareit/messenger/util/Util;->RssiSent:B
    aput-byte v11, v2, v14
    .line 1117
    sget-byte v11, Lcom/shareit/messenger/util/Util;->BattVsent:B
    aput-byte v11, v2, v13
    .line 1118
    invoke-virtual {v0, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 1119
    const-wide/16 v13, 0x64
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    .line 1120
    sget v11, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v11}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v11
    invoke-static {v11, v8, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1122
    aput-byte v9, v2, v4
    .line 1123
    array-length v9, v3
    invoke-static {v3, v8, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1124
    sget-object v9, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v9, v10}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v9
    int-to-byte v9, v9
    aput-byte v9, v2, v6
    .line 1125
    array-length v9, v12
    const/4 v10, 0x6
    invoke-static {v12, v8, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1127
    iget-object v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v9
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    .line 1128
    .local v9, "handy2":[B
    array-length v10, v9
    invoke-static {v9, v8, v2, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1129
    sget-byte v10, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v11, 0xc
    aput-byte v10, v2, v11
    .line 1130
    sget-byte v10, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v11, 0xd
    aput-byte v10, v2, v11
    .line 1131
    invoke-virtual {v0, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 1133
    new-instance v10, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    invoke-direct {v10, v0}, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v10, v0, Lcom/shareit/messenger/socket/MessageExchanger;->frqtimer:Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    .line 1134
    iget-object v10, v0, Lcom/shareit/messenger/socket/MessageExchanger;->frqtimer:Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;
    invoke-virtual {v10}, Lcom/shareit/messenger/socket/MessageExchanger$FrqTmr;->startThread()V
    .line 1135
    const-string v10, "Message Exchanger"
    const-string v11, "Delivery Replied"
    invoke-static {v10, v11}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1136
    iget-object v10, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v11, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v13, "Message Received"
    invoke-static {v10, v11, v13}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 1140
    .end local v2    # "send":[B
    .end local v3    # "temp":[B
    .end local v7    # "handy":[B
    .end local v9    # "handy2":[B
    .end local v12    # "myVary":[B
    :cond_1c
    const-string v2, "FrqTimer"
    const-string v3, " frequency reply"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1141
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 1142
    sput-boolean v8, Lcom/shareit/messenger/socket/MessageExchanger;->settingFrequency:Z
    .line 1143
    sget-boolean v2, Lcom/shareit/messenger/util/Util;->sendScanMessage:Z
    if-eqz v2, :cond_2a
    .line 1147
    sget v2, Lcom/shareit/messenger/util/Util;->index:I
    const/4 v3, 0x6
    add-int/2addr v2, v3
    new-array v2, v2, [B
    .line 1148
    .local v2, "tempScanArray":[B
    const/16 v3, 0x2a
    aput-byte v3, v2, v8
    const/16 v3, 0x23
    const/4 v7, 0x1
    aput-byte v3, v2, v7
    const/16 v3, 0x48
    aput-byte v3, v2, v4
    .line 1149
    const/16 v3, 0x53
    aput-byte v3, v2, v5
    const/16 v3, 0x23
    const/4 v4, 0x4
    aput-byte v3, v2, v4
    const/16 v3, 0x2a
    aput-byte v3, v2, v6
    .line 1150
    sget v3, Lcom/shareit/messenger/util/Util;->index:I
    if-lez v3, :cond_1d
    .line 1152
    sget-object v3, Lcom/shareit/messenger/util/Util;->rssiValues:[B
    array-length v4, v2
    const/4 v5, 0x6
    sub-int/2addr v4, v5
    invoke-static {v3, v8, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1154
    :cond_1d
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "tempScanArray.length "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v5, v2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1155
    invoke-static {v2}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 1156
    invoke-static {}, Lcom/shareit/messenger/crypto/OurEncrypt;->random()I
    move-result v3
    sput v3, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    .line 1157
    iget-object v3, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    sget v4, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    invoke-static {v3, v2, v4}, Lcom/shareit/messenger/crypto/OurEncrypt;->encryptScanMessage(Landroid/content/Context;[BI)[B
    move-result-object v3
    .line 1158
    .local v3, "scanMessage":[B
    const/16 v4, 0x64
    sget v5, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    sget v6, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    add-int/lit16 v6, v6, 0x7530
    invoke-direct {v0, v4, v5, v6, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->sendScanReport(III[B)V
    .line 1159
    sget v4, Lcom/shareit/messenger/util/Util;->index:I
    const/16 v5, 0x95
    if-ne v4, v5, :cond_1e
    .line 1160
    sput v8, Lcom/shareit/messenger/util/Util;->index:I
    goto :goto_4
    .line 1162
    :cond_1e
    const/4 v4, 0x1
    sput v4, Lcom/shareit/messenger/util/Util;->channel:I
    .line 1163
    sput v8, Lcom/shareit/messenger/util/Util;->index:I
    .line 1165
    .end local v2    # "tempScanArray":[B
    .end local v3    # "scanMessage":[B
    :goto_4
    goto/16 :goto_6
    .line 1168
    :cond_1f
    aget-byte v2, v1, v4
    const/16 v3, 0x37
    if-ne v2, v3, :cond_21
    .line 1169
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    if-eqz v2, :cond_20
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->stopThread()V
    .line 1170
    :cond_20
    iget-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingPower:Z
    if-eqz v2, :cond_2a
    .line 1171
    const/4 v2, 0x1
    iput-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->isConnected:Z
    .line 1172
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v3, "edu.google.intent.CONNECTED_WITH_SERVER"
    const-string v4, "Connected"
    invoke-static {v2, v3, v4}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 1174
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setPower:Z
    .line 1175
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 1176
    iput-boolean v8, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingPower:Z
    goto/16 :goto_6
    .line 1179
    :cond_21
    aget-byte v2, v1, v4
    const/16 v3, 0x42
    if-ne v2, v3, :cond_23
    .line 1180
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    if-eqz v2, :cond_22
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->stopThread()V
    .line 1181
    :cond_22
    iget-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingCodeRate:Z
    if-eqz v2, :cond_2a
    .line 1183
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    .line 1184
    iput-boolean v8, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingCodeRate:Z
    goto :goto_6
    .line 1187
    :cond_23
    aget-byte v2, v1, v4
    const/16 v3, 0x43
    if-ne v2, v3, :cond_25
    .line 1188
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    if-eqz v2, :cond_24
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->stopThread()V
    .line 1189
    :cond_24
    iget-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingBandwidth:Z
    if-eqz v2, :cond_2a
    .line 1191
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    .line 1192
    iput-boolean v8, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingBandwidth:Z
    .line 1193
    const/4 v2, 0x1
    iput-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->isConnected:Z
    .line 1194
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v3, "edu.google.intent.CONNECTED_WITH_SERVER"
    const-string v4, "Connected"
    invoke-static {v2, v3, v4}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_6
    .line 1197
    :cond_25
    aget-byte v2, v1, v4
    const/16 v3, 0x44
    if-ne v2, v3, :cond_27
    .line 1198
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    if-eqz v2, :cond_26
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->stopThread()V
    .line 1199
    :cond_26
    iget-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingSpreadingFactor:Z
    if-eqz v2, :cond_2a
    .line 1201
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    .line 1202
    iput-boolean v8, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingSpreadingFactor:Z
    goto :goto_6
    .line 1205
    :cond_27
    aget-byte v2, v1, v4
    const/16 v3, 0x3b
    if-ne v2, v3, :cond_2a
    .line 1206
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    if-eqz v2, :cond_28
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->stopThread()V
    .line 1207
    :cond_28
    iget-boolean v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingScanFrequency:Z
    if-eqz v2, :cond_2a
    .line 1209
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    .line 1210
    iput-boolean v8, v0, Lcom/shareit/messenger/socket/MessageExchanger;->settingScanFrequency:Z
    goto :goto_6
    .line 927
    :cond_29
    :goto_5
    const/4 v2, 0x1
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->shouldSendCommand:Z
    .line 928
    const-string v2, "Message Exchanger"
    const-string v3, "CLEAR_TO_RECEIVE Received"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1214
    :cond_2a
    :goto_6
    return-void
.end method
.method private receiveMessageAndSave([B)I
    .locals 52
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    move-object/from16 v1, p0
    .line 2262
    move-object/from16 v2, p1
    const/4 v3, 0x2
    new-array v4, v3, [B
    .line 2263
    .local v4, "temp":[B
    new-array v5, v3, [B
    .line 2264
    .local v5, "temp2":[B
    const/4 v6, 0x4
    new-array v7, v6, [B
    .line 2265
    .local v7, "temp3":[B
    new-array v8, v6, [B
    iput-object v8, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    .line 2266
    const/4 v8, 0x3
    aget-byte v9, v2, v8
    const/4 v10, 0x0
    aput-byte v9, v4, v10
    .line 2267
    aget-byte v9, v2, v6
    const/4 v11, 0x1
    aput-byte v9, v4, v11
    .line 2270
    const/4 v9, 0x5
    aget-byte v12, v2, v9
    aput-byte v12, v5, v10
    .line 2271
    const/4 v12, 0x6
    aget-byte v13, v2, v12
    aput-byte v13, v5, v11
    .line 2273
    iget-object v13, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    const/4 v14, 0x7
    aget-byte v14, v2, v14
    aput-byte v14, v13, v10
    .line 2274
    iget-object v13, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    const/16 v14, 0x8
    aget-byte v14, v2, v14
    aput-byte v14, v13, v11
    .line 2275
    iget-object v13, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    const/16 v14, 0x9
    aget-byte v14, v2, v14
    aput-byte v14, v13, v3
    .line 2276
    iget-object v13, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    const/16 v14, 0xa
    aget-byte v15, v2, v14
    aput-byte v15, v13, v8
    .line 2278
    const/16 v13, 0xb
    aget-byte v13, v2, v13
    aput-byte v13, v7, v10
    .line 2279
    const/16 v13, 0xc
    aget-byte v15, v2, v13
    aput-byte v15, v7, v11
    .line 2280
    const/16 v15, 0xd
    aget-byte v16, v2, v15
    aput-byte v16, v7, v3
    .line 2281
    const/16 v15, 0xe
    aget-byte v16, v2, v15
    aput-byte v16, v7, v8
    .line 2282
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v13
    .line 2283
    .local v13, "sender":I
    sget-object v14, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v14, v13}, Lcom/shareit/messenger/db/Contact;->isContactExists(Lnet/sqlcipher/database/SQLiteDatabase;I)Z
    move-result v14
    if-nez v14, :cond_0
    .line 2284
    new-instance v14, Lcom/shareit/messenger/db/Contact;
    invoke-direct {v14}, Lcom/shareit/messenger/db/Contact;-><init>()V
    .line 2285
    .local v14, "contact":Lcom/shareit/messenger/db/Contact;
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v15
    invoke-virtual {v14, v15}, Lcom/shareit/messenger/db/Contact;->setContactId(Ljava/lang/String;)V
    .line 2286
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, ""
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v12
    invoke-virtual {v14, v12}, Lcom/shareit/messenger/db/Contact;->setName(Ljava/lang/String;)V
    .line 2287
    sget-object v12, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v12, v14}, Lcom/shareit/messenger/db/Contact;->insert(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/shareit/messenger/db/Contact;)J
    .line 2289
    .end local v14    # "contact":Lcom/shareit/messenger/db/Contact;
    :cond_0
    new-array v12, v3, [B
    aget-byte v14, v7, v3
    aput-byte v14, v12, v10
    aget-byte v14, v7, v8
    aput-byte v14, v12, v11
    invoke-static {v12}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v12
    .line 2290
    .local v12, "combineTime":I
    aget-byte v14, v7, v8
    and-int/lit8 v14, v14, 0x3f
    .line 2291
    .local v14, "min":I
    shr-int/lit8 v15, v12, 0x6
    and-int/lit8 v15, v15, 0x1f
    .line 2292
    .local v15, "hour":I
    aget-byte v9, v7, v3
    and-int/lit16 v9, v9, 0xff
    shr-int/2addr v9, v8
    .line 2293
    .local v9, "date":I
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v6
    .line 2294
    .local v6, "recvindex":I
    iget-object v8, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    invoke-static {v8}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v8
    .line 2295
    .local v8, "messageId":I
    sput v8, Lcom/shareit/messenger/util/Util;->messageId:I
    .line 2296
    const-string v3, "SendMessageTag"
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v18, v4
    const-string v4, "in receivemessage: array of index "
    .line 2296
    .end local v4    # "temp":[B
    .local v18, "temp":[B
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-byte v4, v7, v10
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v4, 0x1
    aget-byte v10, v7, v4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v4, 0x2
    aget-byte v10, v7, v4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v4, 0x3
    aget-byte v10, v7, v4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2297
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "Received Contact ID: "
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2298
    const/4 v3, 0x2
    new-array v4, v3, [B
    const/16 v3, 0xf
    aget-byte v3, v2, v3
    const/4 v10, 0x0
    aput-byte v3, v4, v10
    const/16 v3, 0x10
    aget-byte v3, v2, v3
    const/4 v11, 0x1
    aput-byte v3, v4, v11
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v3
    .line 2299
    .local v3, "msgLen":I
    new-array v4, v3, [B
    .line 2300
    .local v4, "msgData":[B
    const/16 v11, 0x11
    invoke-static {v2, v11, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2301
    const-string v11, "Message Exchanger"
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "msgData[0] "
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v19, v3
    const/4 v2, 0x0
    aget-byte v3, v4, v2
    .line 2301
    .end local v3    # "msgLen":I
    .local v19, "msgLen":I
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v11, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2303
    iget-object v2, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v2, v4, v6}, Lcom/shareit/messenger/crypto/OurEncrypt;->decrypt(Landroid/content/Context;[BI)[B
    move-result-object v2
    .line 2304
    .local v2, "decryptmessageArray":[B
    const-string v3, "Message Exchanger"
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "decryptmessage: "
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/String;
    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-static {v3, v10}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2306
    const/4 v3, 0x0
    aget-byte v10, v2, v3
    const/16 v3, 0x23
    const/16 v11, 0x2a
    if-ne v10, v11, :cond_1
    const/4 v10, 0x1
    aget-byte v11, v2, v10
    if-ne v11, v3, :cond_1
    const/4 v10, 0x2
    aget-byte v11, v2, v10
    const/16 v10, 0x41
    if-ne v11, v10, :cond_1
    const/4 v10, 0x3
    aget-byte v11, v2, v10
    const/16 v10, 0x57
    if-ne v11, v10, :cond_1
    const/4 v10, 0x4
    aget-byte v11, v2, v10
    if-ne v11, v3, :cond_1
    const/4 v10, 0x5
    aget-byte v11, v2, v10
    const/16 v10, 0x2a
    if-ne v11, v10, :cond_1
    .line 2309
    const/4 v3, 0x0
    .line 2310
    .local v3, "decryptmessage":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;
    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v10
    .line 2311
    const-string v10, "*#AW#*"
    const-string v11, ""
    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    .line 2313
    sget-object v10, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "antenna_power"
    invoke-static {v10, v11, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2314
    sget-object v10, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "auto_change_antenna_power"
    move-object/from16 v20, v3
    const-string v3, "1"
    .line 2314
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .local v20, "decryptmessage":Ljava/lang/String;
    invoke-static {v10, v11, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2315
    const/4 v3, 0x1
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 2316
    const/4 v10, 0x0
    sput-boolean v10, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 2317
    .end local v20    # "decryptmessage":Ljava/lang/String;
    nop
    .line 2792
    .end local v2    # "decryptmessageArray":[B
    .end local v4    # "msgData":[B
    .end local v5    # "temp2":[B
    .end local v6    # "recvindex":I
    .end local v7    # "temp3":[B
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .local v10, "date":I
    .local v11, "min":I
    .local v25, "msgData":[B
    .local v29, "temp2":[B
    .local v30, "recvindex":I
    .local v31, "temp3":[B
    .local v39, "combineTime":I
    .local v45, "decryptmessageArray":[B
    .local v47, "hour":I
    :goto_0
    move-object/from16 v45, v2
    move-object/from16 v25, v4
    move-object/from16 v29, v5
    move/from16 v30, v6
    move-object/from16 v31, v7
    goto/16 :goto_4
    .line 2317
    .end local v10    # "date":I
    .end local v11    # "min":I
    .end local v25    # "msgData":[B
    .end local v29    # "temp2":[B
    .end local v30    # "recvindex":I
    .end local v31    # "temp3":[B
    .end local v39    # "combineTime":I
    .end local v45    # "decryptmessageArray":[B
    .end local v47    # "hour":I
    .restart local v2    # "decryptmessageArray":[B
    .restart local v4    # "msgData":[B
    .restart local v5    # "temp2":[B
    .restart local v6    # "recvindex":I
    .restart local v7    # "temp3":[B
    .restart local v9    # "date":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :cond_1
    const/4 v10, 0x0
    aget-byte v11, v2, v10
    const/16 v10, 0x2a
    if-ne v11, v10, :cond_2
    const/4 v10, 0x1
    aget-byte v11, v2, v10
    if-ne v11, v3, :cond_2
    const/4 v10, 0x2
    aget-byte v11, v2, v10
    const/16 v10, 0x50
    if-ne v11, v10, :cond_2
    const/4 v10, 0x3
    aget-byte v11, v2, v10
    const/16 v10, 0x57
    if-ne v11, v10, :cond_2
    const/4 v10, 0x4
    aget-byte v11, v2, v10
    if-ne v11, v3, :cond_2
    const/4 v10, 0x5
    aget-byte v11, v2, v10
    const/16 v10, 0x2a
    if-ne v11, v10, :cond_2
    .line 2320
    const/4 v3, 0x0
    .line 2321
    .restart local v3    # "decryptmessage":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;
    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v10
    .line 2322
    const-string v10, "*#PW#*"
    const-string v11, ""
    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    .line 2324
    sget-object v10, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "antenna_power"
    invoke-static {v10, v11, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2325
    sget-object v10, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "auto_change_antenna_power"
    move-object/from16 v21, v3
    const-string v3, "0"
    .line 2325
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .local v21, "decryptmessage":Ljava/lang/String;
    invoke-static {v10, v11, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2327
    const/4 v3, 0x1
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 2328
    const/4 v10, 0x0
    sput-boolean v10, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 2329
    .end local v21    # "decryptmessage":Ljava/lang/String;
    goto :goto_0
    .line 2330
    :cond_2
    const/4 v10, 0x0
    aget-byte v11, v2, v10
    const/16 v10, 0x2a
    if-ne v11, v10, :cond_4
    const/4 v10, 0x1
    aget-byte v11, v2, v10
    if-ne v11, v3, :cond_4
    const/4 v10, 0x2
    aget-byte v11, v2, v10
    const/16 v10, 0x46
    if-ne v11, v10, :cond_4
    const/4 v10, 0x3
    aget-byte v11, v2, v10
    const/16 v10, 0x52
    if-ne v11, v10, :cond_4
    const/4 v10, 0x4
    aget-byte v11, v2, v10
    if-ne v11, v3, :cond_4
    const/4 v10, 0x5
    aget-byte v11, v2, v10
    const/16 v10, 0x2a
    if-ne v11, v10, :cond_4
    .line 2333
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v10, "frequency"
    invoke-static {v3, v10}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    sput-object v3, Lcom/shareit/messenger/util/Util;->prevChannel:Ljava/lang/String;
    .line 2334
    const/4 v3, 0x0
    .line 2335
    .restart local v3    # "decryptmessage":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;
    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v10
    .line 2336
    const-string v10, "*#FR#*"
    const-string v11, ""
    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    .line 2337
    const-string v10, ","
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v10
    .line 2340
    .local v10, "values":[Ljava/lang/String;
    const/4 v11, 0x0
    aget-object v11, v10, v11
    .line 2341
    .local v11, "frequency":Ljava/lang/String;
    const/16 v16, 0x1
    aget-object v17, v10, v16
    move-object/from16 v22, v17
    .line 2343
    .local v22, "frequency1":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    move-wide/from16 v23, v16
    .line 2344
    .local v23, "value":D
    move-object/from16 v25, v4
    move-object/from16 v4, v22
    :try_start_1
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .line 2344
    .end local v22    # "frequency1":Ljava/lang/String;
    .local v4, "frequency1":Ljava/lang/String;
    .restart local v25    # "msgData":[B
    move-wide/from16 v26, v16
    .line 2345
    .local v26, "value1":D
    move-object/from16 v28, v4
    :try_start_2
    const-string v4, "FrqTimer"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .line 2345
    .end local v4    # "frequency1":Ljava/lang/String;
    .local v28, "frequency1":Ljava/lang/String;
    move-object/from16 v29, v5
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;
    .line 2345
    .end local v5    # "temp2":[B
    .restart local v29    # "temp2":[B
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    move/from16 v30, v6
    :try_start_4
    const-string v6, "before setting "
    .line 2345
    .end local v6    # "recvindex":I
    .restart local v30    # "recvindex":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    move-object/from16 v31, v7
    move-wide/from16 v6, v23
    :try_start_5
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .line 2345
    .end local v7    # "temp3":[B
    .end local v23    # "value":D
    .local v6, "value":D
    .restart local v31    # "temp3":[B
    move-object/from16 v32, v10
    :try_start_6
    const-string v10, ","
    .line 2345
    .end local v10    # "values":[Ljava/lang/String;
    .local v32, "values":[Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    move-object/from16 v33, v11
    move-wide/from16 v10, v26
    :try_start_7
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    .line 2345
    .end local v11    # "frequency":Ljava/lang/String;
    .end local v26    # "value1":D
    .local v10, "value1":D
    .local v33, "frequency":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2347
    const-wide v4, 0x407b600000000000L    # 438.0
    cmpl-double v16, v6, v4
    if-lez v16, :cond_3
    const-wide v4, 0x407ce00000000000L    # 462.0
    cmpg-double v16, v6, v4
    if-gtz v16, :cond_3
    .line 2349
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "frequency"
    invoke-static {v4, v5, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2350
    const-string v4, "FrqTimer"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    move-wide/from16 v34, v6
    const-string v6, "after setting "
    .line 2350
    .end local v6    # "value":D
    .local v34, "value":D
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2351
    const-string v4, "FrqTimer"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "after setting from DB "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v6, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "frequency"
    invoke-static {v6, v7}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2352
    const/4 v4, 0x1
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 2353
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->setFreqFrmServer:Z
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .line 2354
    const/4 v4, 0x0
    .line 2360
    .end local v10    # "value1":D
    .end local v13    # "sender":I
    .end local v34    # "value":D
    .local v4, "sender":I
    move v13, v4
    .line 2360
    .end local v4    # "sender":I
    .restart local v13    # "sender":I
    :cond_3
    goto/16 :goto_2
    .line 2358
    :catch_0
    move-exception v0
    move-object v4, v0
    goto/16 :goto_1
    .line 2358
    .end local v33    # "frequency":Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    :catch_1
    move-exception v0
    move-object/from16 v33, v11
    move-object v4, v0
    .line 2358
    .end local v11    # "frequency":Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    goto :goto_1
    .line 2358
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    .local v10, "values":[Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    :catch_2
    move-exception v0
    move-object/from16 v32, v10
    move-object/from16 v33, v11
    move-object v4, v0
    .line 2358
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "frequency":Ljava/lang/String;
    .restart local v32    # "values":[Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    goto :goto_1
    .line 2358
    .end local v31    # "temp3":[B
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    .restart local v7    # "temp3":[B
    .restart local v10    # "values":[Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    :catch_3
    move-exception v0
    move-object/from16 v31, v7
    move-object/from16 v32, v10
    move-object/from16 v33, v11
    move-object v4, v0
    .line 2358
    .end local v7    # "temp3":[B
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "frequency":Ljava/lang/String;
    .restart local v31    # "temp3":[B
    .restart local v32    # "values":[Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    goto :goto_1
    .line 2358
    .end local v30    # "recvindex":I
    .end local v31    # "temp3":[B
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    .local v6, "recvindex":I
    .restart local v7    # "temp3":[B
    .restart local v10    # "values":[Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    :catch_4
    move-exception v0
    move/from16 v30, v6
    move-object/from16 v31, v7
    move-object/from16 v32, v10
    move-object/from16 v33, v11
    move-object v4, v0
    .line 2358
    .end local v6    # "recvindex":I
    .end local v7    # "temp3":[B
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "frequency":Ljava/lang/String;
    .restart local v30    # "recvindex":I
    .restart local v31    # "temp3":[B
    .restart local v32    # "values":[Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    goto :goto_1
    .line 2358
    .end local v29    # "temp2":[B
    .end local v30    # "recvindex":I
    .end local v31    # "temp3":[B
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    .restart local v5    # "temp2":[B
    .restart local v6    # "recvindex":I
    .restart local v7    # "temp3":[B
    .restart local v10    # "values":[Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    :catch_5
    move-exception v0
    move-object/from16 v29, v5
    move/from16 v30, v6
    move-object/from16 v31, v7
    move-object/from16 v32, v10
    move-object/from16 v33, v11
    move-object v4, v0
    .line 2358
    .end local v5    # "temp2":[B
    .end local v6    # "recvindex":I
    .end local v7    # "temp3":[B
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "frequency":Ljava/lang/String;
    .restart local v29    # "temp2":[B
    .restart local v30    # "recvindex":I
    .restart local v31    # "temp3":[B
    .restart local v32    # "values":[Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    goto :goto_1
    .line 2358
    .end local v28    # "frequency1":Ljava/lang/String;
    .end local v29    # "temp2":[B
    .end local v30    # "recvindex":I
    .end local v31    # "temp3":[B
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    .local v4, "frequency1":Ljava/lang/String;
    .restart local v5    # "temp2":[B
    .restart local v6    # "recvindex":I
    .restart local v7    # "temp3":[B
    .restart local v10    # "values":[Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    :catch_6
    move-exception v0
    move-object/from16 v28, v4
    move-object/from16 v29, v5
    move/from16 v30, v6
    move-object/from16 v31, v7
    move-object/from16 v32, v10
    move-object/from16 v33, v11
    move-object v4, v0
    .line 2358
    .end local v4    # "frequency1":Ljava/lang/String;
    .end local v5    # "temp2":[B
    .end local v6    # "recvindex":I
    .end local v7    # "temp3":[B
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "frequency":Ljava/lang/String;
    .restart local v28    # "frequency1":Ljava/lang/String;
    .restart local v29    # "temp2":[B
    .restart local v30    # "recvindex":I
    .restart local v31    # "temp3":[B
    .restart local v32    # "values":[Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    goto :goto_1
    .line 2358
    .end local v25    # "msgData":[B
    .end local v28    # "frequency1":Ljava/lang/String;
    .end local v29    # "temp2":[B
    .end local v30    # "recvindex":I
    .end local v31    # "temp3":[B
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    .local v4, "msgData":[B
    .restart local v5    # "temp2":[B
    .restart local v6    # "recvindex":I
    .restart local v7    # "temp3":[B
    .restart local v10    # "values":[Ljava/lang/String;
    .restart local v11    # "frequency":Ljava/lang/String;
    .restart local v22    # "frequency1":Ljava/lang/String;
    :catch_7
    move-exception v0
    move-object/from16 v25, v4
    move-object/from16 v29, v5
    move/from16 v30, v6
    move-object/from16 v31, v7
    move-object/from16 v32, v10
    move-object/from16 v33, v11
    move-object/from16 v28, v22
    move-object v4, v0
    .line 2359
    .end local v5    # "temp2":[B
    .end local v6    # "recvindex":I
    .end local v7    # "temp3":[B
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "frequency":Ljava/lang/String;
    .end local v22    # "frequency1":Ljava/lang/String;
    .local v4, "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "msgData":[B
    .restart local v28    # "frequency1":Ljava/lang/String;
    .restart local v29    # "temp2":[B
    .restart local v30    # "recvindex":I
    .restart local v31    # "temp3":[B
    .restart local v32    # "values":[Ljava/lang/String;
    .restart local v33    # "frequency":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2361
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v28    # "frequency1":Ljava/lang/String;
    .end local v32    # "values":[Ljava/lang/String;
    .end local v33    # "frequency":Ljava/lang/String;
    :goto_2
    nop
    .line 2792
    .end local v2    # "decryptmessageArray":[B
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .local v10, "date":I
    .local v11, "min":I
    .restart local v39    # "combineTime":I
    .restart local v45    # "decryptmessageArray":[B
    .restart local v47    # "hour":I
    :goto_3
    move-object/from16 v45, v2
    :goto_4
    move v10, v9
    move/from16 v39, v12
    move v11, v14
    move/from16 v47, v15
    goto/16 :goto_12
    .line 2362
    .end local v10    # "date":I
    .end local v11    # "min":I
    .end local v25    # "msgData":[B
    .end local v29    # "temp2":[B
    .end local v30    # "recvindex":I
    .end local v31    # "temp3":[B
    .end local v39    # "combineTime":I
    .end local v45    # "decryptmessageArray":[B
    .end local v47    # "hour":I
    .restart local v2    # "decryptmessageArray":[B
    .local v4, "msgData":[B
    .restart local v5    # "temp2":[B
    .restart local v6    # "recvindex":I
    .restart local v7    # "temp3":[B
    .restart local v9    # "date":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :cond_4
    move-object/from16 v25, v4
    move-object/from16 v29, v5
    move/from16 v30, v6
    move-object/from16 v31, v7
    .line 2362
    .end local v4    # "msgData":[B
    .end local v5    # "temp2":[B
    .end local v6    # "recvindex":I
    .end local v7    # "temp3":[B
    .restart local v25    # "msgData":[B
    .restart local v29    # "temp2":[B
    .restart local v30    # "recvindex":I
    .restart local v31    # "temp3":[B
    const/4 v4, 0x0
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_6
    const/4 v4, 0x1
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_6
    const/4 v4, 0x2
    aget-byte v5, v2, v4
    const/16 v4, 0x48
    if-ne v5, v4, :cond_6
    const/4 v4, 0x3
    aget-byte v5, v2, v4
    const/16 v4, 0x53
    if-ne v5, v4, :cond_6
    const/4 v4, 0x4
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_6
    const/4 v4, 0x5
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_6
    .line 2365
    const-string v3, "Message Exchanger"
    const-string v4, "Scan Handy Messages"
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2366
    array-length v3, v2
    const/4 v4, 0x6
    sub-int/2addr v3, v4
    new-array v3, v3, [B
    .line 2367
    .local v3, "tempArray":[B
    array-length v5, v3
    const/4 v6, 0x0
    invoke-static {v2, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2368
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    .line 2369
    .local v4, "myPizza":Ljava/lang/String;
    const-string v5, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "myPizza "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2370
    const-string v5, "\\*"
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    .line 2371
    .local v5, "values":[Ljava/lang/String;
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values.length "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v10, v5
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2372
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[0] "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x0
    aget-object v11, v5, v10
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2373
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[1] "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x1
    aget-object v11, v5, v10
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2374
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[2] "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x2
    aget-object v11, v5, v10
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2375
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[3] "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x3
    aget-object v11, v5, v10
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2376
    array-length v6, v5
    if-le v6, v10, :cond_5
    .line 2377
    const/4 v6, 0x0
    aget-object v6, v5, v6
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v6
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    sput-object v6, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    .line 2378
    const/4 v6, 0x1
    aget-object v7, v5, v6
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v6
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    sput-object v6, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    .line 2379
    const/4 v6, 0x2
    aget-object v6, v5, v6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    int-to-double v6, v6
    sput-wide v6, Lcom/shareit/messenger/util/Util;->spacing:D
    .line 2380
    const/4 v6, 0x3
    aget-object v6, v5, v6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    sput v6, Lcom/shareit/messenger/util/Util;->threshold:I
    .line 2381
    sget-object v6, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v6
    const-wide v10, 0x406ae00000000000L    # 215.0
    cmpl-double v16, v6, v10
    if-lez v16, :cond_5
    sget-object v6, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v6
    const-wide v10, 0x406ec00000000000L    # 246.0
    cmpg-double v16, v6, v10
    if-gtz v16, :cond_5
    .line 2382
    const/4 v6, 0x1
    sput-boolean v6, Lcom/shareit/messenger/util/Util;->setScanningFrequency:Z
    .line 2385
    .end local v3    # "tempArray":[B
    .end local v4    # "myPizza":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_5
    goto/16 :goto_3
    .line 2386
    :cond_6
    const/4 v4, 0x0
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_7
    const/4 v4, 0x1
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_7
    const/4 v4, 0x2
    aget-byte v5, v2, v4
    const/16 v4, 0x53
    if-ne v5, v4, :cond_7
    const/4 v4, 0x3
    aget-byte v5, v2, v4
    const/16 v4, 0x50
    if-ne v5, v4, :cond_7
    const/4 v4, 0x4
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_7
    const/4 v4, 0x5
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_7
    .line 2389
    const/4 v3, 0x6
    aget-byte v3, v2, v3
    .line 2390
    .local v3, "CarrierTimevalue":I
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "spreading_factor"
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v6
    invoke-static {v4, v5, v6}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2391
    const/4 v4, 0x1
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    .line 2393
    .end local v3    # "CarrierTimevalue":I
    goto/16 :goto_3
    .line 2394
    :cond_7
    const/4 v4, 0x0
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_8
    const/4 v4, 0x1
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_8
    const/4 v4, 0x2
    aget-byte v5, v2, v4
    const/16 v4, 0x52
    if-ne v5, v4, :cond_8
    const/4 v4, 0x3
    aget-byte v5, v2, v4
    const/16 v4, 0x50
    if-ne v5, v4, :cond_8
    const/4 v4, 0x4
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_8
    const/4 v4, 0x5
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_8
    .line 2397
    new-instance v3, Landroid/content/Intent;
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-class v5, Lcom/shareit/messenger/app/LoginActivity;
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    .line 2398
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "action"
    const-string v5, "PASSWORD RESET"
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .line 2399
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    .line 2400
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_3
    .line 2401
    :cond_8
    const/4 v4, 0x0
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_9
    const/4 v4, 0x1
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_9
    const/4 v4, 0x2
    aget-byte v5, v2, v4
    const/16 v4, 0x44
    if-ne v5, v4, :cond_9
    const/4 v4, 0x3
    aget-byte v5, v2, v4
    const/16 v4, 0x4d
    if-ne v5, v4, :cond_9
    const/4 v4, 0x4
    aget-byte v5, v2, v4
    if-ne v5, v3, :cond_9
    const/4 v4, 0x5
    aget-byte v5, v2, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_9
    .line 2404
    const-string v3, "Message Exchanger"
    const-string v4, "Delete All Messages"
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2405
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v4, "Arlam Parlam Bombay boo oooooo hoooooo"
    const/4 v5, 0x2
    invoke-static {v3, v4, v5}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I)V
    .line 2406
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v4, "Arlam Parlam Bombay boo oooooo hoooooo"
    const/4 v5, 0x1
    invoke-static {v3, v4, v5}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I)V
    .line 2407
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-wide/16 v6, -0x1
    invoke-static {v3, v6, v7, v5}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    .line 2408
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-wide/16 v4, -0x1
    const/4 v6, 0x2
    invoke-static {v3, v4, v5, v6}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    goto/16 :goto_3
    .line 2410
    :cond_9
    const/4 v4, 0x0
    aget-byte v5, v2, v4
    const/4 v4, -0x1
    const/16 v6, 0x3d
    const/16 v7, 0x2a
    if-ne v5, v7, :cond_b
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_b
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x52
    if-ne v7, v5, :cond_b
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x4d
    if-ne v7, v5, :cond_b
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_b
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_b
    .line 2413
    if-lez v13, :cond_a
    .line 2414
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->ringBell(Landroid/content/Context;)V
    .line 2415
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2416
    .local v5, "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2417
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2418
    .local v7, "send":[B
    sget v10, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v10}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v10
    const/4 v11, 0x0
    invoke-static {v10, v11, v7, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2420
    aput-byte v6, v7, v3
    .line 2421
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v11, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2422
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2423
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v11, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2425
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2426
    .local v3, "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v11, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2427
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2428
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2429
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2430
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v10, "Message Received"
    invoke-static {v4, v6, v10}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2432
    const/4 v13, 0x0
    .line 2434
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_a
    invoke-static {}, Lcom/shareit/messenger/db/DBHelper;->reset()V
    goto/16 :goto_3
    .line 2436
    :cond_b
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_c
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_c
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x53
    if-ne v7, v5, :cond_c
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x46
    if-ne v7, v5, :cond_c
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_c
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_c
    .line 2439
    array-length v3, v2
    const/4 v4, 0x6
    sub-int/2addr v3, v4
    new-array v3, v3, [B
    .line 2440
    .local v3, "scan":[B
    array-length v5, v2
    sub-int/2addr v5, v4
    const/4 v6, 0x0
    invoke-static {v2, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2441
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    .line 2442
    .local v4, "frequency":Ljava/lang/String;
    const-string v5, ","
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    .line 2443
    .local v5, "values":[Ljava/lang/String;
    sget-object v6, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "scan_frequencies"
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const/4 v11, 0x0
    aget-object v11, v5, v11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v36, v3
    const/4 v11, 0x1
    aget-object v3, v5, v11
    .line 2443
    .end local v3    # "scan":[B
    .local v36, "scan":[B
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v3, 0x2
    aget-object v3, v5, v3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v3, 0x3
    aget-object v3, v5, v3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v3, 0x4
    aget-object v3, v5, v3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v3, 0x5
    aget-object v3, v5, v3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v3, 0x6
    aget-object v3, v5, v3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v3, 0x7
    aget-object v3, v5, v3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v6, v7, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2445
    const/4 v3, 0x1
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    .line 2446
    .end local v4    # "frequency":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .end local v36    # "scan":[B
    goto/16 :goto_3
    .line 2447
    :cond_c
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_12
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_12
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x44
    if-ne v7, v5, :cond_12
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x52
    if-ne v7, v5, :cond_12
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_12
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_12
    .line 2450
    const/4 v3, 0x2
    new-array v4, v3, [B
    .line 2451
    .local v4, "recvrId":[B
    const-string v3, "SendMessageTag"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "delivery status is "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v6, 0xa
    aget-byte v7, v2, v6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v3, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2452
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/4 v5, 0x6
    aget-byte v5, v2, v5
    const/4 v6, 0x0
    aput-byte v5, v3, v6
    .line 2453
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/4 v5, 0x7
    aget-byte v5, v2, v5
    const/4 v6, 0x1
    aput-byte v5, v3, v6
    .line 2454
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/16 v5, 0x8
    aget-byte v5, v2, v5
    const/4 v6, 0x2
    aput-byte v5, v3, v6
    .line 2455
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/16 v5, 0x9
    aget-byte v5, v2, v5
    const/4 v7, 0x3
    aput-byte v5, v3, v7
    .line 2456
    const/16 v3, 0xa
    aget-byte v3, v2, v3
    .line 2457
    .local v3, "status":B
    const/16 v5, 0xb
    const/4 v7, 0x0
    invoke-static {v2, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2458
    sget-object v5, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v5
    .line 2459
    .local v5, "idMsg":I
    const-string v6, "SendMessageTagDR 1"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "Msg_ID: "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v10, ", status: "
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2460
    sget-object v6, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    int-to-long v10, v5
    invoke-static {v6, v10, v11}, Lcom/shareit/messenger/db/Message;->get(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/shareit/messenger/db/Message;
    move-result-object v6
    .line 2461
    .local v6, "m":Lcom/shareit/messenger/db/Message;
    if-eqz v6, :cond_11
    .line 2463
    :try_start_8
    const-string v7, "SendMessageTagDR 1"
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "Msg_ID: "
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, ", status: "
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, ", MSG: "
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lcom/shareit/messenger/db/Message;->getMessage()Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-static {v7, v10}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2464
    const-string v7, "edu.google.intent.MESSAGE_SENDING_FAILED_TOCLIENT"
    .line 2465
    .local v7, "actionMessage1":Ljava/lang/String;
    const-string v10, "Message Sending Failed To Client"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .line 2466
    .local v10, "extraMessage1":Ljava/lang/String;
    const/16 v11, -0x194
    .line 2467
    .local v11, "resultCode1":I
    move-object/from16 v37, v7
    const/16 v7, 0xb
    .line 2467
    .end local v7    # "actionMessage1":Ljava/lang/String;
    .local v37, "actionMessage1":Ljava/lang/String;
    if-ne v3, v7, :cond_d
    .line 2468
    :try_start_9
    const-string v7, "edu.google.intent.MESSAGE_DELIVERED_TOCLIENT"
    .line 2469
    .end local v37    # "actionMessage1":Ljava/lang/String;
    .restart local v7    # "actionMessage1":Ljava/lang/String;
    const-string v16, "Message Sent To Client"
    move-object/from16 v10, v16
    .line 2470
    const/16 v11, 0x8
    goto :goto_6
    .line 2488
    .end local v7    # "actionMessage1":Ljava/lang/String;
    .end local v10    # "extraMessage1":Ljava/lang/String;
    .end local v11    # "resultCode1":I
    :catch_8
    move-exception v0
    move/from16 v38, v3
    move-object/from16 v40, v4
    move/from16 v44, v9
    move/from16 v39, v12
    move/from16 v42, v14
    move/from16 v43, v15
    .line 2488
    .end local v3    # "status":B
    .end local v4    # "recvrId":[B
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .local v38, "status":B
    .restart local v39    # "combineTime":I
    .local v40, "recvrId":[B
    .local v42, "min":I
    .local v43, "hour":I
    .local v44, "date":I
    :goto_5
    move-object v3, v0
    goto/16 :goto_8
    .line 2471
    .end local v38    # "status":B
    .end local v39    # "combineTime":I
    .end local v40    # "recvrId":[B
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v3    # "status":B
    .restart local v4    # "recvrId":[B
    .restart local v9    # "date":I
    .restart local v10    # "extraMessage1":Ljava/lang/String;
    .restart local v11    # "resultCode1":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    .restart local v37    # "actionMessage1":Ljava/lang/String;
    :cond_d
    const/16 v7, 0xc
    if-ne v3, v7, :cond_e
    .line 2472
    const-string v7, "edu.google.intent.MESSAGE_SENDING_FAILED_TOCLIENT"
    .line 2473
    .end local v37    # "actionMessage1":Ljava/lang/String;
    .restart local v7    # "actionMessage1":Ljava/lang/String;
    const-string v16, "Message Sending Failed To Client"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    move-object/from16 v10, v16
    .line 2475
    const/16 v11, 0x9
    goto :goto_6
    .line 2477
    .end local v7    # "actionMessage1":Ljava/lang/String;
    .restart local v37    # "actionMessage1":Ljava/lang/String;
    :cond_e
    move-object/from16 v7, v37
    .line 2477
    .end local v37    # "actionMessage1":Ljava/lang/String;
    .restart local v7    # "actionMessage1":Ljava/lang/String;
    :goto_6
    move/from16 v38, v3
    :try_start_a
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .line 2477
    .end local v3    # "status":B
    .restart local v38    # "status":B
    move/from16 v39, v12
    :try_start_b
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v12
    .line 2477
    .end local v12    # "combineTime":I
    .restart local v39    # "combineTime":I
    invoke-static {v3, v12}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v3
    .line 2478
    .local v3, "c":Lcom/shareit/messenger/db/Contact;
    invoke-virtual {v6}, Lcom/shareit/messenger/db/Message;->getmultiMessage()Ljava/lang/String;
    move-result-object v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    move-object/from16 v40, v4
    :try_start_c
    const-string v4, ";"
    .line 2478
    .end local v4    # "recvrId":[B
    .restart local v40    # "recvrId":[B
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    .line 2479
    .local v4, "multicont2":[Ljava/lang/String;
    if-eqz v3, :cond_10
    const/16 v12, -0x194
    if-eq v11, v12, :cond_10
    .line 2480
    array-length v12, v4
    move-object/from16 v41, v4
    const/4 v4, 0x1
    if-le v12, v4, :cond_f
    .line 2481
    .end local v4    # "multicont2":[Ljava/lang/String;
    .local v41, "multicont2":[Ljava/lang/String;
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    move/from16 v42, v14
    move/from16 v43, v15
    int-to-long v14, v5
    .line 2481
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    :try_start_d
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    move/from16 v44, v9
    :try_start_e
    invoke-virtual {v6}, Lcom/shareit/messenger/db/Message;->getrecvrMessage()Ljava/lang/String;
    move-result-object v9
    .line 2481
    .end local v9    # "date":I
    .restart local v44    # "date":I
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v9, " "
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/shareit/messenger/db/Contact;->getName()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v4, v14, v15, v9, v11}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)V
    goto :goto_7
    .line 2488
    .end local v3    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v7    # "actionMessage1":Ljava/lang/String;
    .end local v10    # "extraMessage1":Ljava/lang/String;
    .end local v11    # "resultCode1":I
    .end local v41    # "multicont2":[Ljava/lang/String;
    .end local v44    # "date":I
    .restart local v9    # "date":I
    :catch_9
    move-exception v0
    move/from16 v44, v9
    move-object v3, v0
    .line 2488
    .end local v9    # "date":I
    .restart local v44    # "date":I
    goto/16 :goto_8
    .line 2483
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v3    # "c":Lcom/shareit/messenger/db/Contact;
    .restart local v7    # "actionMessage1":Ljava/lang/String;
    .restart local v9    # "date":I
    .restart local v10    # "extraMessage1":Ljava/lang/String;
    .restart local v11    # "resultCode1":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    .restart local v41    # "multicont2":[Ljava/lang/String;
    :cond_f
    move/from16 v44, v9
    move/from16 v42, v14
    move/from16 v43, v15
    .line 2483
    .end local v9    # "date":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    int-to-long v14, v5
    invoke-virtual {v3}, Lcom/shareit/messenger/db/Contact;->getName()Ljava/lang/String;
    move-result-object v9
    invoke-static {v4, v14, v15, v9, v11}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)V
    goto :goto_7
    .line 2487
    .end local v41    # "multicont2":[Ljava/lang/String;
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v4    # "multicont2":[Ljava/lang/String;
    .restart local v9    # "date":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :cond_10
    move-object/from16 v41, v4
    move/from16 v44, v9
    move/from16 v42, v14
    move/from16 v43, v15
    .line 2487
    .end local v4    # "multicont2":[Ljava/lang/String;
    .end local v9    # "date":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v41    # "multicont2":[Ljava/lang/String;
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    :goto_7
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v4, v7, v10}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .line 2491
    .end local v3    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v7    # "actionMessage1":Ljava/lang/String;
    .end local v10    # "extraMessage1":Ljava/lang/String;
    .end local v11    # "resultCode1":I
    .end local v41    # "multicont2":[Ljava/lang/String;
    goto :goto_9
    .line 2488
    :catch_a
    move-exception v0
    goto/16 :goto_5
    .line 2488
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v9    # "date":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :catch_b
    move-exception v0
    move/from16 v44, v9
    move/from16 v42, v14
    move/from16 v43, v15
    move-object v3, v0
    .line 2488
    .end local v9    # "date":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    goto :goto_8
    .line 2488
    .end local v40    # "recvrId":[B
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .local v4, "recvrId":[B
    .restart local v9    # "date":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :catch_c
    move-exception v0
    move-object/from16 v40, v4
    move/from16 v44, v9
    move/from16 v42, v14
    move/from16 v43, v15
    move-object v3, v0
    .line 2488
    .end local v4    # "recvrId":[B
    .end local v9    # "date":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v40    # "recvrId":[B
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    goto :goto_8
    .line 2488
    .end local v39    # "combineTime":I
    .end local v40    # "recvrId":[B
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v4    # "recvrId":[B
    .restart local v9    # "date":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :catch_d
    move-exception v0
    move-object/from16 v40, v4
    move/from16 v44, v9
    move/from16 v39, v12
    move/from16 v42, v14
    move/from16 v43, v15
    move-object v3, v0
    .line 2488
    .end local v4    # "recvrId":[B
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v39    # "combineTime":I
    .restart local v40    # "recvrId":[B
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    goto :goto_8
    .line 2488
    .end local v38    # "status":B
    .end local v39    # "combineTime":I
    .end local v40    # "recvrId":[B
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .local v3, "status":B
    .restart local v4    # "recvrId":[B
    .restart local v9    # "date":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :catch_e
    move-exception v0
    move/from16 v38, v3
    move-object/from16 v40, v4
    move/from16 v44, v9
    move/from16 v39, v12
    move/from16 v42, v14
    move/from16 v43, v15
    move-object v3, v0
    .line 2489
    .end local v4    # "recvrId":[B
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .local v3, "e":Ljava/lang/Exception;
    .restart local v38    # "status":B
    .restart local v39    # "combineTime":I
    .restart local v40    # "recvrId":[B
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    :goto_8
    const-string v4, "SendMessageTag"
    const-string v7, "Exception Caught"
    invoke-static {v4, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2490
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    .line 2490
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "idMsg":I
    .end local v6    # "m":Lcom/shareit/messenger/db/Message;
    .end local v38    # "status":B
    .end local v40    # "recvrId":[B
    goto :goto_9
    .line 2493
    .end local v39    # "combineTime":I
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v9    # "date":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :cond_11
    move/from16 v44, v9
    move/from16 v39, v12
    move/from16 v42, v14
    move/from16 v43, v15
    .line 2493
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v39    # "combineTime":I
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    :goto_9
    goto/16 :goto_a
    .line 2495
    .end local v39    # "combineTime":I
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .restart local v9    # "date":I
    .restart local v12    # "combineTime":I
    .restart local v14    # "min":I
    .restart local v15    # "hour":I
    :cond_12
    move/from16 v44, v9
    move/from16 v39, v12
    move/from16 v42, v14
    move/from16 v43, v15
    .line 2495
    .end local v9    # "date":I
    .end local v12    # "combineTime":I
    .end local v14    # "min":I
    .end local v15    # "hour":I
    .restart local v39    # "combineTime":I
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_14
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_14
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x47
    if-ne v7, v5, :cond_14
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x4c
    if-ne v7, v5, :cond_14
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_14
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_14
    .line 2498
    if-lez v13, :cond_13
    .line 2500
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2501
    .local v5, "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2502
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2503
    .local v7, "send":[B
    sget v9, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    const/4 v10, 0x0
    invoke-static {v9, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2505
    aput-byte v6, v7, v3
    .line 2506
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v10, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2507
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2508
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2510
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2511
    .local v3, "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2512
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2513
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2514
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2515
    const-string v4, "Gps Command"
    const-string v6, "Delivery Replied in GPS command"
    invoke-static {v4, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2516
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v9, "Message Received"
    invoke-static {v4, v6, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2518
    const/4 v13, 0x0
    .line 2520
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_13
    const/4 v3, 0x2
    new-array v4, v3, [B
    .line 2521
    .restart local v4    # "recvrId":[B
    const/4 v5, 0x0
    const/4 v6, 0x6
    invoke-static {v2, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2522
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v3
    iput v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->recvrGL:I
    .line 2523
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->replyGLcmd()V
    .line 2524
    .end local v4    # "recvrId":[B
    nop
    .line 2792
    .end local v2    # "decryptmessageArray":[B
    .end local v42    # "min":I
    .end local v43    # "hour":I
    .end local v44    # "date":I
    .local v10, "date":I
    .local v11, "min":I
    .restart local v45    # "decryptmessageArray":[B
    .restart local v47    # "hour":I
    :goto_a
    move-object/from16 v45, v2
    move/from16 v11, v42
    move/from16 v47, v43
    move/from16 v10, v44
    goto/16 :goto_12
    .line 2526
    .end local v10    # "date":I
    .end local v11    # "min":I
    .end local v45    # "decryptmessageArray":[B
    .end local v47    # "hour":I
    .restart local v2    # "decryptmessageArray":[B
    .restart local v42    # "min":I
    .restart local v43    # "hour":I
    .restart local v44    # "date":I
    :cond_14
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_17
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_17
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x4d
    if-ne v7, v5, :cond_17
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x4c
    if-ne v7, v5, :cond_17
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_17
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_17
    .line 2529
    if-lez v13, :cond_15
    .line 2531
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2532
    .restart local v5    # "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2533
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2534
    .restart local v7    # "send":[B
    sget v9, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    const/4 v10, 0x0
    invoke-static {v9, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2536
    aput-byte v6, v7, v3
    .line 2537
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v10, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2538
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2539
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2541
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2542
    .restart local v3    # "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2543
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2544
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2545
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2546
    const-string v4, "Gps Command"
    const-string v6, "Delivery Replied in GPS command"
    invoke-static {v4, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2547
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v9, "Message Received"
    invoke-static {v4, v6, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2549
    const/4 v13, 0x0
    .line 2552
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_15
    const/4 v3, 0x0
    .line 2553
    .local v3, "decryptmessage":Ljava/lang/String;
    :try_start_f
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v4
    .line 2554
    const-string v4, "*#ML#*"
    const-string v5, ""
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v4
    move-object v3, v4
    .line 2556
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
    .line 2557
    .local v4, "value":I
    const/4 v5, 0x1
    if-lt v4, v5, :cond_16
    const/16 v5, 0xe6
    if-gt v4, v5, :cond_16
    .line 2558
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "max_msg_length"
    invoke-static {v5, v6, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_10
    .line 2560
    :try_start_10
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "max_msg_length"
    invoke-static {v5, v6}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->MAX_TEXT_LENGTH:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10
    .line 2563
    goto :goto_b
    .line 2561
    :catch_f
    move-exception v0
    move-object v5, v0
    .line 2562
    .local v5, "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10
    .line 2562
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .end local v4    # "value":I
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_b
    .line 2565
    :catch_10
    move-exception v0
    move-object v3, v0
    .line 2566
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2567
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    :goto_b
    goto/16 :goto_a
    .line 2570
    :cond_17
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_1a
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_1a
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x43
    if-ne v7, v5, :cond_1a
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x4d
    if-ne v7, v5, :cond_1a
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_1a
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_1a
    .line 2574
    if-lez v13, :cond_18
    .line 2576
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2577
    .local v5, "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2578
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2579
    .restart local v7    # "send":[B
    sget v9, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    const/4 v10, 0x0
    invoke-static {v9, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2581
    aput-byte v6, v7, v3
    .line 2582
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v10, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2583
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2584
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2586
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2587
    .local v3, "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2588
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2589
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2590
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2591
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v9, "Message Received"
    invoke-static {v4, v6, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2593
    const/4 v13, 0x0
    .line 2597
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_18
    const/4 v3, 0x0
    .line 2598
    .local v3, "decryptmessage":Ljava/lang/String;
    :try_start_12
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v4
    .line 2599
    const-string v4, "*#CM#*"
    const-string v5, ""
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v4
    move-object v3, v4
    .line 2601
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
    .line 2602
    .restart local v4    # "value":I
    const/4 v5, 0x1
    if-lt v4, v5, :cond_19
    const/16 v5, 0xfa
    if-gt v4, v5, :cond_19
    .line 2604
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "max_msg_at_a_channel"
    invoke-static {v5, v6, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_12
    .line 2606
    :try_start_13
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "max_msg_at_a_channel"
    invoke-static {v5, v6}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->MAX_MSGS_AT_ONE_CHANNEL:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_12
    .line 2609
    goto :goto_c
    .line 2607
    :catch_11
    move-exception v0
    move-object v5, v0
    .line 2608
    .local v5, "e":Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_12
    .line 2608
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .end local v4    # "value":I
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_c
    .line 2611
    :catch_12
    move-exception v0
    move-object v3, v0
    .line 2612
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2613
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    :goto_c
    goto/16 :goto_a
    .line 2615
    :cond_1a
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_26
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_26
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x42
    if-ne v7, v5, :cond_26
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x57
    if-ne v7, v5, :cond_26
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_26
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_26
    .line 2619
    if-lez v13, :cond_1b
    .line 2621
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2622
    .local v5, "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2623
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2624
    .restart local v7    # "send":[B
    sget v9, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    const/4 v10, 0x0
    invoke-static {v9, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2626
    aput-byte v6, v7, v3
    .line 2627
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v10, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2628
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2629
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2631
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2632
    .local v3, "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2633
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2634
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2635
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2636
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v9, "Message Received"
    invoke-static {v4, v6, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2638
    const/4 v13, 0x0
    .line 2641
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_1b
    const/4 v3, 0x6
    aget-byte v4, v2, v3
    .line 2642
    .local v4, "loraBW":I
    const/4 v3, 0x0
    .line 2644
    .local v3, "bandwidth":I
    if-nez v4, :cond_1c
    .line 2645
    const/4 v3, 0x7
    goto :goto_d
    .line 2646
    :cond_1c
    const/16 v5, 0x8
    if-ne v4, v5, :cond_1d
    .line 2647
    const/16 v3, 0xa
    goto :goto_d
    .line 2648
    :cond_1d
    const/4 v5, 0x1
    if-ne v4, v5, :cond_1e
    .line 2649
    const/16 v3, 0xf
    goto :goto_d
    .line 2650
    :cond_1e
    const/16 v5, 0x9
    if-ne v4, v5, :cond_1f
    .line 2651
    const/16 v3, 0x14
    goto :goto_d
    .line 2652
    :cond_1f
    const/4 v5, 0x2
    if-ne v4, v5, :cond_20
    .line 2653
    const/16 v3, 0x1f
    goto :goto_d
    .line 2654
    :cond_20
    const/16 v5, 0xa
    if-ne v4, v5, :cond_21
    .line 2655
    const/16 v3, 0x29
    goto :goto_d
    .line 2656
    :cond_21
    const/4 v5, 0x3
    if-ne v4, v5, :cond_22
    .line 2657
    const/16 v3, 0x3e
    goto :goto_d
    .line 2658
    :cond_22
    const/4 v5, 0x4
    if-ne v4, v5, :cond_23
    .line 2659
    const/16 v3, 0x7d
    goto :goto_d
    .line 2660
    :cond_23
    const/4 v5, 0x5
    if-ne v4, v5, :cond_24
    .line 2661
    const/16 v3, 0xfa
    goto :goto_d
    .line 2662
    :cond_24
    const/4 v5, 0x6
    if-ne v4, v5, :cond_25
    .line 2663
    const/16 v3, 0x1f4
    .line 2666
    :cond_25
    :goto_d
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "bandwidth"
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v7
    invoke-static {v5, v6, v7}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2667
    const/4 v5, 0x1
    sput-boolean v5, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    .line 2669
    .end local v3    # "bandwidth":I
    .end local v4    # "loraBW":I
    goto/16 :goto_a
    .line 2670
    :cond_26
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_29
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_29
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x43
    if-ne v7, v5, :cond_29
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x44
    if-ne v7, v5, :cond_29
    const/4 v5, 0x4
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_29
    const/4 v5, 0x5
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_29
    .line 2674
    if-lez v13, :cond_27
    .line 2676
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2677
    .restart local v5    # "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2678
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2679
    .restart local v7    # "send":[B
    sget v9, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    const/4 v10, 0x0
    invoke-static {v9, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2681
    aput-byte v6, v7, v3
    .line 2682
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v10, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2683
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2684
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2686
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2687
    .local v3, "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2688
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2689
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2690
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2691
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v9, "Message Received"
    invoke-static {v4, v6, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2693
    const/4 v13, 0x0
    .line 2696
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_27
    const/4 v3, 0x6
    aget-byte v3, v2, v3
    .line 2699
    .local v3, "codeRate":I
    const/4 v4, 0x1
    if-lt v3, v4, :cond_28
    const/4 v4, 0x4
    if-gt v3, v4, :cond_28
    .line 2700
    :try_start_15
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "code_rate"
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v6
    invoke-static {v4, v5, v6}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2701
    const/4 v4, 0x1
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_13
    goto :goto_e
    .line 2703
    :catch_13
    move-exception v0
    move-object v4, v0
    .line 2704
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2704
    .end local v3    # "codeRate":I
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    goto :goto_f
    .line 2705
    .restart local v3    # "codeRate":I
    :cond_28
    :goto_e
    nop
    .line 2706
    .end local v3    # "codeRate":I
    :goto_f
    goto/16 :goto_a
    .line 2708
    :cond_29
    const/4 v5, 0x0
    aget-byte v7, v2, v5
    const/16 v5, 0x2a
    if-ne v7, v5, :cond_2c
    const/4 v5, 0x1
    aget-byte v7, v2, v5
    if-ne v7, v3, :cond_2c
    const/4 v5, 0x2
    aget-byte v7, v2, v5
    const/16 v5, 0x43
    if-ne v7, v5, :cond_2c
    const/4 v5, 0x3
    aget-byte v7, v2, v5
    const/16 v5, 0x52
    if-ne v7, v5, :cond_2c
    const/4 v5, 0x4
    aget-byte v5, v2, v5
    if-ne v5, v3, :cond_2c
    const/4 v3, 0x5
    aget-byte v5, v2, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_2c
    .line 2712
    if-lez v13, :cond_2a
    .line 2714
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 2715
    .restart local v5    # "temp40":[B
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    .line 2716
    const/16 v7, 0xe
    new-array v7, v7, [B
    .line 2717
    .restart local v7    # "send":[B
    sget v9, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v9
    const/4 v10, 0x0
    invoke-static {v9, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2719
    aput-byte v6, v7, v3
    .line 2720
    array-length v3, v5
    const/4 v6, 0x3
    invoke-static {v5, v10, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2721
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v4}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v4, 0x5
    aput-byte v3, v7, v4
    .line 2722
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->temp4:[B
    array-length v4, v4
    const/4 v6, 0x6
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2724
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 2725
    .local v3, "handy":[B
    array-length v4, v3
    const/16 v6, 0xa
    invoke-static {v3, v10, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2726
    sget-byte v4, Lcom/shareit/messenger/util/Util;->RssiSent:B
    const/16 v6, 0xc
    aput-byte v4, v7, v6
    .line 2727
    sget-byte v4, Lcom/shareit/messenger/util/Util;->BattVsent:B
    const/16 v6, 0xd
    aput-byte v4, v7, v6
    .line 2728
    invoke-virtual {v1, v7}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2729
    iget-object v4, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v6, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v9, "Message Received"
    invoke-static {v4, v6, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2731
    const/4 v13, 0x0
    .line 2734
    .end local v3    # "handy":[B
    .end local v5    # "temp40":[B
    .end local v7    # "send":[B
    :cond_2a
    const/4 v3, 0x0
    .line 2735
    .local v3, "decryptmessage":Ljava/lang/String;
    :try_start_16
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v4
    .line 2736
    const-string v4, "*#CR#*"
    const-string v5, ""
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v4
    move-object v3, v4
    .line 2738
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
    .line 2739
    .local v4, "value":I
    const/4 v5, 0x1
    if-lt v4, v5, :cond_2b
    const/16 v5, 0xfa
    if-gt v4, v5, :cond_2b
    .line 2741
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "max_cmd_at_a_channel"
    invoke-static {v5, v6, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_15
    .line 2743
    :try_start_17
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "max_cmd_at_a_channel"
    invoke-static {v5, v6}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->MAX_CMD_AT_ONE_CHANNEL:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_15
    .line 2746
    goto :goto_10
    .line 2744
    :catch_14
    move-exception v0
    move-object v5, v0
    .line 2745
    .local v5, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_15
    .line 2745
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .end local v4    # "value":I
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_10
    .line 2748
    :catch_15
    move-exception v0
    move-object v3, v0
    .line 2749
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2750
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2b
    :goto_10
    goto/16 :goto_a
    .line 2753
    :cond_2c
    const/4 v3, 0x0
    .line 2754
    .local v3, "decryptmessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    move-object v3, v4
    .line 2755
    new-instance v4, Lcom/shareit/messenger/db/Message;
    invoke-direct {v4}, Lcom/shareit/messenger/db/Message;-><init>()V
    .line 2756
    .local v4, "m":Lcom/shareit/messenger/db/Message;
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v5, v13}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v5
    .line 2757
    .local v5, "c":Lcom/shareit/messenger/db/Contact;
    if-eqz v5, :cond_2d
    .line 2758
    invoke-virtual {v5}, Lcom/shareit/messenger/db/Contact;->getContactId()Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    invoke-virtual {v4, v6}, Lcom/shareit/messenger/db/Message;->setSenderConId(I)V
    goto :goto_11
    .line 2760
    :cond_2d
    invoke-virtual {v4, v13}, Lcom/shareit/messenger/db/Message;->setSenderConId(I)V
    .line 2762
    :goto_11
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v3
    .line 2763
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "decryptmessage "
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2764
    invoke-virtual {v4, v3}, Lcom/shareit/messenger/db/Message;->setMessage(Ljava/lang/String;)V
    .line 2765
    invoke-virtual {v4, v8}, Lcom/shareit/messenger/db/Message;->setMessageId(I)V
    .line 2766
    const/4 v6, 0x5
    invoke-virtual {v4, v6}, Lcom/shareit/messenger/db/Message;->setStatus(I)V
    .line 2767
    const/4 v6, 0x1
    invoke-virtual {v4, v6}, Lcom/shareit/messenger/db/Message;->setType(I)V
    .line 2768
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v7
    .line 2769
    .local v7, "now":Ljava/util/Calendar;
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v10, v44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    .line 2769
    .end local v44    # "date":I
    .restart local v10    # "date":I
    const-string v11, "/"
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x2
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I
    move-result v12
    add-int/2addr v12, v6
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, "/"
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I
    move-result v6
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v6, " "
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v6, v43
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    .line 2769
    .end local v43    # "hour":I
    .local v6, "hour":I
    const-string v11, ":"
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v11, v42
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    .line 2769
    .end local v42    # "min":I
    .restart local v11    # "min":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    .line 2770
    .local v9, "time":Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;
    const-string v14, "dd/MM/yyyy HH:mm"
    invoke-direct {v12, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    .line 2771
    .local v12, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v14
    invoke-virtual {v4, v14, v15}, Lcom/shareit/messenger/db/Message;->setDataTime(J)V
    .line 2772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v14
    .line 2773
    .local v14, "timeInMillis":J
    move-object/from16 v45, v2
    const-string v2, "Message Exchanger"
    .line 2773
    .end local v2    # "decryptmessageArray":[B
    .restart local v45    # "decryptmessageArray":[B
    move-object/from16 v46, v5
    new-instance v5, Ljava/lang/StringBuilder;
    .line 2773
    .end local v5    # "c":Lcom/shareit/messenger/db/Contact;
    .local v46, "c":Lcom/shareit/messenger/db/Contact;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v47, v6
    const-string v6, "Before message saving to db 1 "
    .line 2773
    .end local v6    # "hour":I
    .restart local v47    # "hour":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v2, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2774
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v2
    .line 2775
    .local v2, "cal1":Ljava/util/Calendar;
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V
    .line 2776
    new-instance v5, Ljava/text/SimpleDateFormat;
    const-string v6, "MMM d,yyyy hh:mm:ss aa"
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    .line 2777
    .local v5, "refFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v4, v6}, Lcom/shareit/messenger/db/Message;->setRefTime(Ljava/lang/String;)V
    .line 2778
    const-string v6, "Message Exchanger"
    move-object/from16 v48, v2
    new-instance v2, Ljava/lang/StringBuilder;
    .line 2778
    .end local v2    # "cal1":Ljava/util/Calendar;
    .local v48, "cal1":Ljava/util/Calendar;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v49, v5
    const-string v5, "Before message saving to db"
    .line 2778
    .end local v5    # "refFormatter":Ljava/text/SimpleDateFormat;
    .local v49, "refFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v6, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2779
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v2, v4}, Lcom/shareit/messenger/db/Message;->insertInbox(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/shareit/messenger/db/Message;)J
    move-result-wide v5
    .line 2780
    .local v5, "value":J
    const-string v2, "Message Exchanger"
    move-object/from16 v50, v4
    new-instance v4, Ljava/lang/StringBuilder;
    .line 2780
    .end local v4    # "m":Lcom/shareit/messenger/db/Message;
    .local v50, "m":Lcom/shareit/messenger/db/Message;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v51, v7
    const-string v7, "After message saving to db "
    .line 2780
    .end local v7    # "now":Ljava/util/Calendar;
    .local v51, "now":Ljava/util/Calendar;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v2, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2781
    const-wide/16 v16, 0x0
    cmp-long v2, v5, v16
    if-lez v2, :cond_2f
    .line 2782
    const-string v2, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "message saved to db"
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v2, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2784
    sget-boolean v2, Lcom/shareit/messenger/util/Util;->isUsingApp:Z
    if-eqz v2, :cond_2e
    .line 2785
    iget-object v2, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const/4 v4, 0x2
    invoke-static {v2, v4}, Lcom/shareit/messenger/util/Util;->vibratePhone(Landroid/content/Context;I)V
    goto :goto_12
    .line 2787
    :cond_2e
    iget-object v2, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->ringBell(Landroid/content/Context;)V
    .line 2788
    iget-object v2, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->sendNotification(Landroid/content/Context;)V
    .line 2792
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .end local v5    # "value":J
    .end local v9    # "time":Ljava/lang/String;
    .end local v12    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v14    # "timeInMillis":J
    .end local v46    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v48    # "cal1":Ljava/util/Calendar;
    .end local v49    # "refFormatter":Ljava/text/SimpleDateFormat;
    .end local v50    # "m":Lcom/shareit/messenger/db/Message;
    .end local v51    # "now":Ljava/util/Calendar;
    :cond_2f
    :goto_12
    const-string v2, "Message Exchanger"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "message save return"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2793
    return v13
.end method
.method private receiveMultimsg([B)V
    .locals 76
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    move-object/from16 v1, p0
    .line 1218
    move-object/from16 v2, p1
    const-string v3, "receiveMultimsg"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, ""
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1220
    const/4 v3, 0x0
    .line 1221
    .local v3, "msgLen":I
    const/4 v4, 0x0
    .line 1222
    .local v4, "msgIndx":I
    const/4 v5, 0x0
    .line 1223
    .local v5, "no_0f_messages":I
    const/16 v6, 0x190
    new-array v6, v6, [B
    .line 1224
    .local v6, "sends":[B
    const/16 v7, 0xff
    array-length v8, v2
    if-gt v8, v7, :cond_5b
    .line 1225
    const/4 v7, 0x2
    new-array v8, v7, [B
    .line 1226
    .local v8, "senderIdBytes":[B
    new-array v9, v7, [B
    .line 1227
    .local v9, "serverIdBytes":[B
    const/4 v10, 0x4
    new-array v11, v10, [B
    .line 1228
    .local v11, "msgIdBytes":[B
    new-array v12, v10, [B
    .line 1229
    .local v12, "recvIndexBytes":[B
    const/16 v13, 0xa
    .line 1235
    .local v13, "i":I
    const/16 v17, 0x7
    const/4 v14, 0x3
    const/4 v7, 0x0
    const/4 v15, 0x1
    if-nez v5, :cond_2a
    .line 1236
    aget-byte v24, v2, v14
    aput-byte v24, v8, v7
    .line 1237
    aget-byte v24, v2, v10
    aput-byte v24, v8, v15
    .line 1239
    const/16 v23, 0x5
    aget-byte v24, v2, v23
    aput-byte v24, v9, v7
    .line 1240
    const/16 v22, 0x6
    aget-byte v24, v2, v22
    aput-byte v24, v9, v15
    .line 1242
    aget-byte v24, v2, v17
    aput-byte v24, v11, v7
    .line 1243
    const/16 v21, 0x8
    aget-byte v24, v2, v21
    aput-byte v24, v11, v15
    .line 1244
    const/16 v20, 0x9
    aget-byte v24, v2, v20
    const/16 v18, 0x2
    aput-byte v24, v11, v18
    .line 1245
    const/16 v16, 0xa
    aget-byte v24, v2, v16
    aput-byte v24, v11, v14
    .line 1247
    const/16 v24, 0xb
    aget-byte v24, v2, v24
    aput-byte v24, v12, v7
    .line 1248
    const/16 v24, 0xc
    aget-byte v24, v2, v24
    aput-byte v24, v12, v15
    .line 1249
    const/16 v24, 0xd
    aget-byte v24, v2, v24
    const/16 v18, 0x2
    aput-byte v24, v12, v18
    .line 1250
    const/16 v24, 0xe
    aget-byte v24, v2, v24
    aput-byte v24, v12, v14
    .line 1251
    invoke-static {v8}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v10
    .line 1252
    .local v10, "sender":I
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v15, v10}, Lcom/shareit/messenger/db/Contact;->isContactExists(Lnet/sqlcipher/database/SQLiteDatabase;I)Z
    move-result v15
    if-nez v15, :cond_0
    .line 1253
    new-instance v15, Lcom/shareit/messenger/db/Contact;
    invoke-direct {v15}, Lcom/shareit/messenger/db/Contact;-><init>()V
    .line 1254
    .local v15, "contact":Lcom/shareit/messenger/db/Contact;
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v14
    invoke-virtual {v15, v14}, Lcom/shareit/messenger/db/Contact;->setContactId(Ljava/lang/String;)V
    .line 1255
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, ""
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v15, v7}, Lcom/shareit/messenger/db/Contact;->setName(Ljava/lang/String;)V
    .line 1256
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v7, v15}, Lcom/shareit/messenger/db/Contact;->insert(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/shareit/messenger/db/Contact;)J
    .line 1258
    .end local v15    # "contact":Lcom/shareit/messenger/db/Contact;
    :cond_0
    const/4 v7, 0x2
    new-array v14, v7, [B
    aget-byte v15, v12, v7
    const/4 v7, 0x0
    aput-byte v15, v14, v7
    const/4 v7, 0x3
    aget-byte v15, v12, v7
    const/16 v24, 0x1
    aput-byte v15, v14, v24
    invoke-static {v14}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v14
    .line 1259
    .local v14, "combineTime":I
    aget-byte v15, v12, v7
    and-int/lit8 v7, v15, 0x3f
    .line 1260
    .local v7, "min":I
    shr-int/lit8 v15, v14, 0x6
    and-int/lit8 v15, v15, 0x1f
    .line 1261
    .local v15, "hour":I
    move/from16 v26, v3
    const/16 v18, 0x2
    aget-byte v3, v12, v18
    .line 1261
    .end local v3    # "msgLen":I
    .local v26, "msgLen":I
    and-int/lit16 v3, v3, 0xff
    const/16 v24, 0x3
    shr-int/lit8 v3, v3, 0x3
    .line 1262
    .local v3, "date":I
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v24
    .line 1263
    .local v24, "serverId":I
    move/from16 v27, v3
    invoke-static {v12}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v3
    .line 1264
    .local v3, "recvindex":I
    .local v27, "date":I
    move/from16 v28, v4
    invoke-static {v11}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v4
    .line 1265
    .local v4, "messageId":I
    .local v28, "msgIndx":I
    move/from16 v29, v5
    const-string v5, "Message Exchanger"
    .line 1265
    .end local v5    # "no_0f_messages":I
    .local v29, "no_0f_messages":I
    move/from16 v30, v7
    new-instance v7, Ljava/lang/StringBuilder;
    .line 1265
    .end local v7    # "min":I
    .local v30, "min":I
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v31, v9
    const-string v9, "Received Contact ID: "
    .line 1265
    .end local v9    # "serverIdBytes":[B
    .local v31, "serverIdBytes":[B
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v5, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1266
    const/4 v5, 0x2
    new-array v7, v5, [B
    const/16 v5, 0xf
    aget-byte v5, v2, v5
    const/4 v9, 0x0
    aput-byte v5, v7, v9
    const/16 v5, 0x10
    aget-byte v5, v2, v5
    const/16 v25, 0x1
    aput-byte v5, v7, v25
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v5
    .line 1267
    .end local v26    # "msgLen":I
    .local v5, "msgLen":I
    new-array v7, v5, [B
    .line 1269
    .local v7, "msgData":[B
    move/from16 v32, v13
    const/16 v13, 0x11
    .line 1269
    .end local v13    # "i":I
    .local v32, "i":I
    invoke-static {v2, v13, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1270
    iget-object v9, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v9, v7, v3}, Lcom/shareit/messenger/crypto/OurEncrypt;->decrypt(Landroid/content/Context;[BI)[B
    move-result-object v9
    .line 1272
    .local v9, "decryptmessageArray":[B
    const-string v13, "Message Exchanger"
    move/from16 v33, v3
    new-instance v3, Ljava/lang/StringBuilder;
    .line 1272
    .end local v3    # "recvindex":I
    .local v33, "recvindex":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v34, v5
    const-string v5, "decryptmessage: M1"
    .line 1272
    .end local v5    # "msgLen":I
    .local v34, "msgLen":I
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v13, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1275
    const/4 v3, 0x0
    aget-byte v5, v9, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_1
    const/4 v3, 0x1
    aget-byte v5, v9, v3
    const/16 v3, 0x23
    if-ne v5, v3, :cond_1
    const/4 v5, 0x2
    aget-byte v13, v9, v5
    const/16 v5, 0x41
    if-ne v13, v5, :cond_1
    const/4 v5, 0x3
    aget-byte v13, v9, v5
    const/16 v5, 0x57
    if-ne v13, v5, :cond_1
    const/4 v5, 0x4
    aget-byte v13, v9, v5
    if-ne v13, v3, :cond_1
    const/4 v3, 0x5
    aget-byte v5, v9, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_1
    .line 1278
    const/4 v3, 0x0
    .line 1279
    .local v3, "decryptmessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    move-object v3, v5
    .line 1280
    const-string v5, "*#AW#*"
    const-string v13, ""
    invoke-virtual {v3, v5, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    .line 1282
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v13, "antenna_power"
    invoke-static {v5, v13, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1283
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v13, "auto_change_antenna_power"
    move-object/from16 v35, v3
    const-string v3, "1"
    .line 1283
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .local v35, "decryptmessage":Ljava/lang/String;
    invoke-static {v5, v13, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1284
    const/4 v3, 0x1
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 1285
    const/4 v3, 0x0
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 1286
    .end local v35    # "decryptmessage":Ljava/lang/String;
    nop
    .line 1715
    .end local v7    # "msgData":[B
    .end local v8    # "senderIdBytes":[B
    .end local v11    # "msgIdBytes":[B
    .end local v12    # "recvIndexBytes":[B
    .end local v14    # "combineTime":I
    .end local v15    # "hour":I
    .local v37, "msgData":[B
    .local v38, "combineTime":I
    .local v39, "hour":I
    .local v40, "recvIndexBytes":[B
    .local v45, "msgIdBytes":[B
    .local v47, "senderIdBytes":[B
    :goto_0
    move-object/from16 v37, v7
    move-object/from16 v47, v8
    move-object/from16 v45, v11
    move-object/from16 v40, v12
    move/from16 v38, v14
    move/from16 v39, v15
    goto/16 :goto_e
    .line 1286
    .end local v37    # "msgData":[B
    .end local v38    # "combineTime":I
    .end local v39    # "hour":I
    .end local v40    # "recvIndexBytes":[B
    .end local v45    # "msgIdBytes":[B
    .end local v47    # "senderIdBytes":[B
    .restart local v7    # "msgData":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v11    # "msgIdBytes":[B
    .restart local v12    # "recvIndexBytes":[B
    .restart local v14    # "combineTime":I
    .restart local v15    # "hour":I
    :cond_1
    const/4 v3, 0x0
    aget-byte v5, v9, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_2
    const/4 v3, 0x1
    aget-byte v5, v9, v3
    const/16 v3, 0x23
    if-ne v5, v3, :cond_2
    const/4 v5, 0x2
    aget-byte v13, v9, v5
    const/16 v5, 0x50
    if-ne v13, v5, :cond_2
    const/4 v5, 0x3
    aget-byte v13, v9, v5
    const/16 v5, 0x57
    if-ne v13, v5, :cond_2
    const/4 v5, 0x4
    aget-byte v13, v9, v5
    if-ne v13, v3, :cond_2
    const/4 v3, 0x5
    aget-byte v5, v9, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_2
    .line 1289
    const/4 v3, 0x0
    .line 1290
    .restart local v3    # "decryptmessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    move-object v3, v5
    .line 1291
    const-string v5, "*#PW#*"
    const-string v13, ""
    invoke-virtual {v3, v5, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    .line 1293
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v13, "antenna_power"
    invoke-static {v5, v13, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1294
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v13, "auto_change_antenna_power"
    move-object/from16 v36, v3
    const-string v3, "0"
    .line 1294
    .end local v3    # "decryptmessage":Ljava/lang/String;
    .local v36, "decryptmessage":Ljava/lang/String;
    invoke-static {v5, v13, v3}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1296
    const/4 v3, 0x1
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 1297
    const/4 v3, 0x0
    sput-boolean v3, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 1298
    .end local v36    # "decryptmessage":Ljava/lang/String;
    goto :goto_0
    .line 1299
    :cond_2
    const/4 v3, 0x0
    aget-byte v5, v9, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_8
    const/4 v3, 0x1
    aget-byte v5, v9, v3
    const/16 v3, 0x23
    if-ne v5, v3, :cond_8
    const/4 v5, 0x2
    aget-byte v13, v9, v5
    const/16 v5, 0x44
    if-ne v13, v5, :cond_8
    const/4 v5, 0x3
    aget-byte v13, v9, v5
    const/16 v5, 0x52
    if-ne v13, v5, :cond_8
    const/4 v5, 0x4
    aget-byte v13, v9, v5
    if-ne v13, v3, :cond_8
    const/4 v3, 0x5
    aget-byte v5, v9, v3
    const/16 v3, 0x2a
    if-ne v5, v3, :cond_8
    .line 1302
    const/4 v3, 0x2
    new-array v5, v3, [B
    .line 1303
    .local v5, "recvrId":[B
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/4 v13, 0x6
    aget-byte v26, v9, v13
    const/4 v13, 0x0
    aput-byte v26, v3, v13
    .line 1304
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    aget-byte v13, v9, v17
    const/16 v25, 0x1
    aput-byte v13, v3, v25
    .line 1305
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/16 v13, 0x8
    aget-byte v26, v9, v13
    const/4 v13, 0x2
    aput-byte v26, v3, v13
    .line 1306
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/16 v18, 0x9
    aget-byte v26, v9, v18
    const/16 v18, 0x3
    aput-byte v26, v3, v18
    .line 1307
    const/16 v3, 0xa
    aget-byte v13, v9, v3
    .line 1308
    .local v13, "status":B
    const/16 v3, 0xb
    move-object/from16 v37, v7
    move/from16 v38, v14
    const/4 v7, 0x2
    const/4 v14, 0x0
    invoke-static {v9, v3, v5, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1309
    .end local v7    # "msgData":[B
    .end local v14    # "combineTime":I
    .restart local v37    # "msgData":[B
    .restart local v38    # "combineTime":I
    sget-object v3, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v3
    .line 1310
    .local v3, "idMsg":I
    const-string v7, "SendMessageTagDR 3"
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v39, v15
    const-string v15, "Msg_ID: "
    .line 1310
    .end local v15    # "hour":I
    .restart local v39    # "hour":I
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v15, ", status: "
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    invoke-static {v7, v14}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1311
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    int-to-long v14, v3
    invoke-static {v7, v14, v15}, Lcom/shareit/messenger/db/Message;->get(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/shareit/messenger/db/Message;
    move-result-object v7
    .line 1312
    .local v7, "m":Lcom/shareit/messenger/db/Message;
    if-eqz v7, :cond_7
    .line 1315
    :try_start_0
    const-string v14, "SendMessageTagDR 3"
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    move-object/from16 v40, v12
    :try_start_1
    const-string v12, "Msg_ID: "
    .line 1315
    .end local v12    # "recvIndexBytes":[B
    .restart local v40    # "recvIndexBytes":[B
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v12, ", status: "
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v12, ", MSG: "
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Lcom/shareit/messenger/db/Message;->getMessage()Ljava/lang/String;
    move-result-object v12
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v12
    invoke-static {v14, v12}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1316
    const-string v12, "edu.google.intent.MESSAGE_SENDING_FAILED_TOCLIENT"
    .line 1317
    .local v12, "actionMessage1":Ljava/lang/String;
    const-string v14, "Message Sending Failed To Client"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .line 1318
    .local v14, "extraMessage1":Ljava/lang/String;
    const/16 v15, -0x194
    .line 1319
    .local v15, "resultCode1":I
    move-object/from16 v41, v12
    const/16 v12, 0xb
    .line 1319
    .end local v12    # "actionMessage1":Ljava/lang/String;
    .local v41, "actionMessage1":Ljava/lang/String;
    if-ne v13, v12, :cond_3
    .line 1320
    :try_start_2
    const-string v12, "edu.google.intent.MESSAGE_DELIVERED_TOCLIENT"
    .line 1321
    .end local v41    # "actionMessage1":Ljava/lang/String;
    .restart local v12    # "actionMessage1":Ljava/lang/String;
    const-string v26, "Message Sent To Client"
    move-object/from16 v14, v26
    .line 1322
    const/16 v15, 0x8
    goto :goto_1
    .line 1340
    .end local v12    # "actionMessage1":Ljava/lang/String;
    .end local v14    # "extraMessage1":Ljava/lang/String;
    .end local v15    # "resultCode1":I
    :catch_0
    move-exception v0
    move-object v2, v0
    move-object/from16 v43, v5
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move/from16 v42, v13
    goto/16 :goto_3
    .line 1323
    .restart local v14    # "extraMessage1":Ljava/lang/String;
    .restart local v15    # "resultCode1":I
    .restart local v41    # "actionMessage1":Ljava/lang/String;
    :cond_3
    const/16 v12, 0xc
    if-ne v13, v12, :cond_4
    .line 1324
    const-string v12, "edu.google.intent.MESSAGE_SENDING_FAILED_TOCLIENT"
    .line 1325
    .end local v41    # "actionMessage1":Ljava/lang/String;
    .restart local v12    # "actionMessage1":Ljava/lang/String;
    const-string v26, "Message Sending Failed To Client"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    move-object/from16 v14, v26
    .line 1326
    const/16 v15, 0x9
    goto :goto_1
    .line 1329
    .end local v12    # "actionMessage1":Ljava/lang/String;
    .restart local v41    # "actionMessage1":Ljava/lang/String;
    :cond_4
    move-object/from16 v12, v41
    .line 1329
    .end local v41    # "actionMessage1":Ljava/lang/String;
    .restart local v12    # "actionMessage1":Ljava/lang/String;
    :goto_1
    move/from16 v42, v13
    :try_start_3
    sget-object v13, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    .line 1329
    .end local v13    # "status":B
    .local v42, "status":B
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v2
    invoke-static {v13, v2}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v2
    .line 1330
    .local v2, "c":Lcom/shareit/messenger/db/Contact;
    invoke-virtual {v7}, Lcom/shareit/messenger/db/Message;->getmultiMessage()Ljava/lang/String;
    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    move-object/from16 v43, v5
    :try_start_4
    const-string v5, ";"
    .line 1330
    .end local v5    # "recvrId":[B
    .local v43, "recvrId":[B
    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    .line 1331
    .local v5, "multicont2":[Ljava/lang/String;
    if-eqz v2, :cond_6
    const/16 v13, -0x194
    if-eq v15, v13, :cond_6
    .line 1332
    array-length v13, v5
    move-object/from16 v44, v5
    const/4 v5, 0x1
    if-le v13, v5, :cond_5
    .line 1333
    .end local v5    # "multicont2":[Ljava/lang/String;
    .local v44, "multicont2":[Ljava/lang/String;
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    move/from16 v46, v10
    move-object/from16 v45, v11
    int-to-long v10, v3
    .line 1333
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .restart local v45    # "msgIdBytes":[B
    .local v46, "sender":I
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    move-object/from16 v47, v8
    :try_start_6
    invoke-virtual {v7}, Lcom/shareit/messenger/db/Message;->getrecvrMessage()Ljava/lang/String;
    move-result-object v8
    .line 1333
    .end local v8    # "senderIdBytes":[B
    .restart local v47    # "senderIdBytes":[B
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, " "
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/shareit/messenger/db/Contact;->getName()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v5, v10, v11, v8, v15}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)V
    goto :goto_2
    .line 1340
    .end local v2    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v12    # "actionMessage1":Ljava/lang/String;
    .end local v14    # "extraMessage1":Ljava/lang/String;
    .end local v15    # "resultCode1":I
    .end local v44    # "multicont2":[Ljava/lang/String;
    .end local v47    # "senderIdBytes":[B
    .restart local v8    # "senderIdBytes":[B
    :catch_1
    move-exception v0
    move-object/from16 v47, v8
    move-object v2, v0
    .line 1340
    .end local v8    # "senderIdBytes":[B
    .restart local v47    # "senderIdBytes":[B
    goto/16 :goto_3
    .line 1335
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .restart local v2    # "c":Lcom/shareit/messenger/db/Contact;
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    .restart local v12    # "actionMessage1":Ljava/lang/String;
    .restart local v14    # "extraMessage1":Ljava/lang/String;
    .restart local v15    # "resultCode1":I
    .restart local v44    # "multicont2":[Ljava/lang/String;
    :cond_5
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    .line 1335
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    int-to-long v10, v3
    invoke-virtual {v2}, Lcom/shareit/messenger/db/Contact;->getName()Ljava/lang/String;
    move-result-object v8
    invoke-static {v5, v10, v11, v8, v15}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)V
    goto :goto_2
    .line 1339
    .end local v44    # "multicont2":[Ljava/lang/String;
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .restart local v5    # "multicont2":[Ljava/lang/String;
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    :cond_6
    move-object/from16 v44, v5
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    .line 1339
    .end local v5    # "multicont2":[Ljava/lang/String;
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .restart local v44    # "multicont2":[Ljava/lang/String;
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    :goto_2
    iget-object v5, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v5, v12, v14}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .line 1343
    .end local v2    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v12    # "actionMessage1":Ljava/lang/String;
    .end local v14    # "extraMessage1":Ljava/lang/String;
    .end local v15    # "resultCode1":I
    .end local v44    # "multicont2":[Ljava/lang/String;
    goto :goto_4
    .line 1340
    :catch_2
    move-exception v0
    move-object v2, v0
    goto :goto_3
    .line 1340
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    :catch_3
    move-exception v0
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move-object v2, v0
    .line 1340
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    goto :goto_3
    .line 1340
    .end local v43    # "recvrId":[B
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .local v5, "recvrId":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    :catch_4
    move-exception v0
    move-object/from16 v43, v5
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move-object v2, v0
    .line 1340
    .end local v5    # "recvrId":[B
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .restart local v43    # "recvrId":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    goto :goto_3
    .line 1340
    .end local v42    # "status":B
    .end local v43    # "recvrId":[B
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .restart local v5    # "recvrId":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    .restart local v13    # "status":B
    :catch_5
    move-exception v0
    move-object/from16 v43, v5
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move/from16 v42, v13
    move-object v2, v0
    .line 1340
    .end local v5    # "recvrId":[B
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .end local v13    # "status":B
    .restart local v42    # "status":B
    .restart local v43    # "recvrId":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    goto :goto_3
    .line 1340
    .end local v40    # "recvIndexBytes":[B
    .end local v42    # "status":B
    .end local v43    # "recvrId":[B
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .restart local v5    # "recvrId":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    .local v12, "recvIndexBytes":[B
    .restart local v13    # "status":B
    :catch_6
    move-exception v0
    move-object/from16 v43, v5
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move-object/from16 v40, v12
    move/from16 v42, v13
    move-object v2, v0
    .line 1341
    .end local v5    # "recvrId":[B
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .end local v12    # "recvIndexBytes":[B
    .end local v13    # "status":B
    .local v2, "e":Ljava/lang/Exception;
    .restart local v40    # "recvIndexBytes":[B
    .restart local v42    # "status":B
    .restart local v43    # "recvrId":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    :goto_3
    const-string v5, "SendMessageTag"
    const-string v8, "Exception Caught"
    invoke-static {v5, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1342
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    .line 1342
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "idMsg":I
    .end local v7    # "m":Lcom/shareit/messenger/db/Message;
    .end local v42    # "status":B
    .end local v43    # "recvrId":[B
    goto :goto_4
    .line 1345
    .end local v40    # "recvIndexBytes":[B
    .end local v45    # "msgIdBytes":[B
    .end local v46    # "sender":I
    .end local v47    # "senderIdBytes":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v10    # "sender":I
    .restart local v11    # "msgIdBytes":[B
    .restart local v12    # "recvIndexBytes":[B
    :cond_7
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move-object/from16 v40, v12
    .line 1715
    .end local v8    # "senderIdBytes":[B
    .end local v11    # "msgIdBytes":[B
    .end local v12    # "recvIndexBytes":[B
    .restart local v40    # "recvIndexBytes":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v47    # "senderIdBytes":[B
    :goto_4
    move/from16 v10, v46
    goto/16 :goto_e
    .line 1346
    .end local v37    # "msgData":[B
    .end local v38    # "combineTime":I
    .end local v39    # "hour":I
    .end local v40    # "recvIndexBytes":[B
    .end local v45    # "msgIdBytes":[B
    .end local v47    # "senderIdBytes":[B
    .local v7, "msgData":[B
    .restart local v8    # "senderIdBytes":[B
    .restart local v11    # "msgIdBytes":[B
    .restart local v12    # "recvIndexBytes":[B
    .local v14, "combineTime":I
    .local v15, "hour":I
    :cond_8
    move-object/from16 v37, v7
    move-object/from16 v47, v8
    move/from16 v46, v10
    move-object/from16 v45, v11
    move-object/from16 v40, v12
    move/from16 v38, v14
    move/from16 v39, v15
    .line 1346
    .end local v7    # "msgData":[B
    .end local v8    # "senderIdBytes":[B
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .end local v12    # "recvIndexBytes":[B
    .end local v14    # "combineTime":I
    .end local v15    # "hour":I
    .restart local v37    # "msgData":[B
    .restart local v38    # "combineTime":I
    .restart local v39    # "hour":I
    .restart local v40    # "recvIndexBytes":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v46    # "sender":I
    .restart local v47    # "senderIdBytes":[B
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_9
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_9
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x44
    if-ne v5, v3, :cond_9
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x4d
    if-ne v5, v3, :cond_9
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_9
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_9
    .line 1349
    const-string v2, "Message Exchanger"
    const-string v3, "Delete All Messages"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1350
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "Arlam Parlam Bombay boo oooooo hoooooo"
    const/4 v5, 0x2
    invoke-static {v2, v3, v5}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I)V
    .line 1351
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "Arlam Parlam Bombay boo oooooo hoooooo"
    const/4 v5, 0x1
    invoke-static {v2, v3, v5}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I)V
    .line 1352
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-wide/16 v7, -0x1
    invoke-static {v2, v7, v8, v5}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    .line 1353
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const/4 v3, 0x2
    invoke-static {v2, v7, v8, v3}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    goto :goto_4
    .line 1355
    :cond_9
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_b
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_b
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x46
    if-ne v5, v3, :cond_b
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x52
    if-ne v5, v3, :cond_b
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_b
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_b
    .line 1358
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "frequency"
    invoke-static {v2, v3}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    sput-object v2, Lcom/shareit/messenger/util/Util;->prevChannel:Ljava/lang/String;
    .line 1359
    const/4 v2, 0x0
    .line 1360
    .local v2, "decryptmessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1361
    const-string v3, "*#FR#*"
    const-string v5, ""
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    .line 1362
    const-string v3, ","
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v3
    .line 1365
    .local v3, "values":[Ljava/lang/String;
    const/4 v5, 0x0
    aget-object v7, v3, v5
    .line 1366
    .local v7, "frequency":Ljava/lang/String;
    const/4 v5, 0x1
    aget-object v8, v3, v5
    move-object v5, v8
    .line 1368
    .local v5, "frequency1":Ljava/lang/String;
    :try_start_7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v10
    .line 1369
    .local v10, "value":D
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v12
    .line 1370
    .local v12, "value1":D
    const-string v8, "FrqTimer"
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "before setting "
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    const-string v15, ","
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    invoke-static {v8, v14}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1372
    const-wide v14, 0x407b600000000000L    # 438.0
    cmpl-double v8, v10, v14
    if-lez v8, :cond_a
    const-wide v14, 0x407ce00000000000L    # 462.0
    cmpg-double v8, v10, v14
    if-gtz v8, :cond_a
    .line 1374
    sget-object v8, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v14, "frequency"
    invoke-static {v8, v14, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1375
    const-string v8, "FrqTimer"
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "after setting "
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    invoke-static {v8, v14}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1376
    const-string v8, "FrqTimer"
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "after setting from DB "
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8
    move-object/from16 v48, v2
    :try_start_8
    const-string v2, "frequency"
    .line 1376
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .local v48, "decryptmessage":Ljava/lang/String;
    invoke-static {v15, v2}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v8, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1377
    const/4 v2, 0x1
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 1378
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->setFreqFrmServer:Z
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7
    .line 1379
    const/4 v10, 0x0
    .line 1385
    .end local v12    # "value1":D
    .end local v46    # "sender":I
    .local v10, "sender":I
    move/from16 v46, v10
    goto :goto_5
    .line 1383
    .end local v10    # "sender":I
    .restart local v46    # "sender":I
    :catch_7
    move-exception v0
    move-object v2, v0
    goto :goto_6
    .line 1385
    .end local v48    # "decryptmessage":Ljava/lang/String;
    .restart local v2    # "decryptmessage":Ljava/lang/String;
    :cond_a
    move-object/from16 v48, v2
    .line 1385
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .restart local v48    # "decryptmessage":Ljava/lang/String;
    :goto_5
    goto :goto_7
    .line 1383
    .end local v48    # "decryptmessage":Ljava/lang/String;
    .restart local v2    # "decryptmessage":Ljava/lang/String;
    :catch_8
    move-exception v0
    move-object/from16 v48, v2
    move-object v2, v0
    .line 1384
    .local v2, "e":Ljava/lang/NumberFormatException;
    .restart local v48    # "decryptmessage":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 1386
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "values":[Ljava/lang/String;
    .end local v5    # "frequency1":Ljava/lang/String;
    .end local v7    # "frequency":Ljava/lang/String;
    .end local v46    # "sender":I
    .end local v48    # "decryptmessage":Ljava/lang/String;
    .restart local v10    # "sender":I
    :goto_7
    move/from16 v10, v46
    goto/16 :goto_e
    .line 1387
    .end local v10    # "sender":I
    .restart local v46    # "sender":I
    :cond_b
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_c
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_c
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x53
    if-ne v5, v3, :cond_c
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x50
    if-ne v5, v3, :cond_c
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_c
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_c
    .line 1390
    const/4 v2, 0x6
    aget-byte v3, v9, v2
    .line 1393
    .local v3, "CarrierTimevalue":I
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "spreading_factor"
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v7
    invoke-static {v2, v5, v7}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1396
    const/4 v2, 0x1
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    .line 1398
    .end local v3    # "CarrierTimevalue":I
    goto/16 :goto_4
    .line 1399
    :cond_c
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_d
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_d
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x53
    if-ne v5, v3, :cond_d
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x46
    if-ne v5, v3, :cond_d
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_d
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_d
    .line 1402
    array-length v2, v9
    const/4 v3, 0x6
    sub-int/2addr v2, v3
    new-array v2, v2, [B
    .line 1403
    .local v2, "scan":[B
    array-length v5, v9
    sub-int/2addr v5, v3
    const/4 v7, 0x0
    invoke-static {v9, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1404
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    .line 1405
    .local v3, "frequency":Ljava/lang/String;
    const-string v5, ","
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    .line 1406
    .local v5, "values":[Ljava/lang/String;
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v8, "scan_frequencies"
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const/4 v11, 0x0
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x1
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x2
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x3
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x4
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x5
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x6
    aget-object v12, v5, v11
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, ","
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-object v11, v5, v17
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-static {v7, v8, v10}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1408
    const/4 v7, 0x1
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    .line 1409
    .end local v2    # "scan":[B
    .end local v3    # "frequency":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    goto/16 :goto_4
    .line 1410
    :cond_d
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_f
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_f
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x48
    if-ne v5, v3, :cond_f
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x53
    if-ne v5, v3, :cond_f
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_f
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_f
    .line 1413
    const-string v2, "Message Exchanger"
    const-string v3, "Scan Handy Messages"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1414
    array-length v2, v9
    const/4 v3, 0x6
    sub-int/2addr v2, v3
    new-array v2, v2, [B
    .line 1415
    .local v2, "tempArray":[B
    array-length v5, v2
    const/4 v7, 0x0
    invoke-static {v9, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1416
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    .line 1417
    .local v3, "myPizza":Ljava/lang/String;
    const-string v5, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "myPizza "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v5, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1418
    const-string v5, "\\*"
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    .line 1419
    .restart local v5    # "values":[Ljava/lang/String;
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values.length "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v10, v5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1420
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[0] "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x0
    aget-object v11, v5, v10
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1421
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[1] "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x1
    aget-object v11, v5, v10
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1422
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[2] "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x2
    aget-object v11, v5, v10
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1423
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "values[3] "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x3
    aget-object v11, v5, v10
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1424
    array-length v7, v5
    if-le v7, v10, :cond_e
    .line 1425
    const/4 v7, 0x0
    aget-object v8, v5, v7
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v7
    sput-object v7, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    .line 1426
    const/4 v7, 0x1
    aget-object v8, v5, v7
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v7
    sput-object v7, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    .line 1427
    const/4 v7, 0x2
    aget-object v8, v5, v7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    int-to-double v7, v7
    sput-wide v7, Lcom/shareit/messenger/util/Util;->spacing:D
    .line 1428
    const/4 v7, 0x3
    aget-object v8, v5, v7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    sput v7, Lcom/shareit/messenger/util/Util;->threshold:I
    .line 1429
    sget-object v7, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v7
    const-wide v10, 0x406ae00000000000L    # 215.0
    cmpl-double v12, v7, v10
    if-lez v12, :cond_e
    sget-object v7, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v7
    const-wide v10, 0x406ec00000000000L    # 246.0
    cmpg-double v12, v7, v10
    if-gtz v12, :cond_e
    .line 1430
    const/4 v7, 0x1
    sput-boolean v7, Lcom/shareit/messenger/util/Util;->setScanningFrequency:Z
    .line 1433
    .end local v2    # "tempArray":[B
    .end local v3    # "myPizza":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_e
    goto/16 :goto_4
    .line 1434
    :cond_f
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_10
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_10
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x52
    if-ne v5, v3, :cond_10
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x50
    if-ne v5, v3, :cond_10
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_10
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_10
    .line 1437
    new-instance v2, Landroid/content/Intent;
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-class v5, Lcom/shareit/messenger/app/LoginActivity;
    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    .line 1438
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "action"
    const-string v5, "PASSWORD RESET"
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .line 1439
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    .line 1440
    .end local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_4
    .line 1441
    :cond_10
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_11
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_11
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x52
    if-ne v5, v3, :cond_11
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x4d
    if-ne v5, v3, :cond_11
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_11
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_11
    .line 1465
    invoke-static {}, Lcom/shareit/messenger/db/DBHelper;->reset()V
    goto/16 :goto_4
    .line 1467
    :cond_11
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_12
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_12
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x47
    if-ne v5, v3, :cond_12
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x4c
    if-ne v5, v3, :cond_12
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_12
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_12
    .line 1470
    const/4 v2, 0x2
    new-array v3, v2, [B
    .line 1471
    .local v3, "recvrId":[B
    const/4 v5, 0x0
    const/4 v7, 0x6
    invoke-static {v9, v7, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1472
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v2
    iput v2, v1, Lcom/shareit/messenger/socket/MessageExchanger;->recvrGL:I
    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->replyGLcmd()V
    .line 1475
    .end local v3    # "recvrId":[B
    goto/16 :goto_4
    .line 1477
    :cond_12
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_14
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_14
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x4d
    if-ne v5, v3, :cond_14
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x4c
    if-ne v5, v3, :cond_14
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_14
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_14
    .line 1503
    const/4 v2, 0x0
    .line 1504
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_9
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1505
    const-string v3, "*#ML#*"
    const-string v5, ""
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 1507
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 1508
    .local v3, "value":I
    const/4 v5, 0x1
    if-lt v3, v5, :cond_13
    const/16 v5, 0xe6
    if-gt v3, v5, :cond_13
    .line 1509
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "max_msg_length"
    invoke-static {v5, v7, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_a
    .line 1511
    :try_start_a
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "max_msg_length"
    invoke-static {v5, v7}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->MAX_TEXT_LENGTH:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a
    .line 1514
    goto :goto_8
    .line 1512
    :catch_9
    move-exception v0
    move-object v5, v0
    .line 1513
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a
    .line 1513
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_8
    .line 1516
    :catch_a
    move-exception v0
    move-object v2, v0
    .line 1517
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 1518
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v46    # "sender":I
    .restart local v10    # "sender":I
    :cond_13
    :goto_8
    goto/16 :goto_4
    .line 1521
    .end local v10    # "sender":I
    .restart local v46    # "sender":I
    :cond_14
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_16
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_16
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x43
    if-ne v5, v3, :cond_16
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x4d
    if-ne v5, v3, :cond_16
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_16
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_16
    .line 1548
    const/4 v2, 0x0
    .line 1549
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_c
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1550
    const-string v3, "*#CM#*"
    const-string v5, ""
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 1552
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 1553
    .restart local v3    # "value":I
    const/4 v5, 0x1
    if-lt v3, v5, :cond_15
    const/16 v5, 0xfa
    if-gt v3, v5, :cond_15
    .line 1555
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "max_msg_at_a_channel"
    invoke-static {v5, v7, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c
    .line 1557
    :try_start_d
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "max_msg_at_a_channel"
    invoke-static {v5, v7}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->MAX_MSGS_AT_ONE_CHANNEL:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_c
    .line 1560
    goto :goto_9
    .line 1558
    :catch_b
    move-exception v0
    move-object v5, v0
    .line 1559
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_c
    .line 1559
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_9
    .line 1562
    :catch_c
    move-exception v0
    move-object v2, v0
    .line 1563
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 1564
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v46    # "sender":I
    .restart local v10    # "sender":I
    :cond_15
    :goto_9
    goto/16 :goto_4
    .line 1566
    .end local v10    # "sender":I
    .restart local v46    # "sender":I
    :cond_16
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_21
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_21
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x42
    if-ne v5, v3, :cond_21
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x57
    if-ne v5, v3, :cond_21
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_21
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_21
    .line 1570
    const/4 v2, 0x6
    aget-byte v3, v9, v2
    .line 1571
    .local v3, "loraBW":I
    const/4 v2, 0x0
    .line 1573
    .local v2, "bandwidth":I
    if-nez v3, :cond_17
    .line 1574
    const/4 v2, 0x7
    goto :goto_a
    .line 1575
    :cond_17
    const/16 v5, 0x8
    if-ne v3, v5, :cond_18
    .line 1576
    const/16 v2, 0xa
    goto :goto_a
    .line 1577
    :cond_18
    const/4 v5, 0x1
    if-ne v3, v5, :cond_19
    .line 1578
    const/16 v2, 0xf
    goto :goto_a
    .line 1579
    :cond_19
    const/16 v5, 0x9
    if-ne v3, v5, :cond_1a
    .line 1580
    const/16 v2, 0x14
    goto :goto_a
    .line 1581
    :cond_1a
    const/4 v5, 0x2
    if-ne v3, v5, :cond_1b
    .line 1582
    const/16 v2, 0x1f
    goto :goto_a
    .line 1583
    :cond_1b
    const/16 v5, 0xa
    if-ne v3, v5, :cond_1c
    .line 1584
    const/16 v2, 0x29
    goto :goto_a
    .line 1585
    :cond_1c
    const/4 v5, 0x3
    if-ne v3, v5, :cond_1d
    .line 1586
    const/16 v2, 0x3e
    goto :goto_a
    .line 1587
    :cond_1d
    const/4 v5, 0x4
    if-ne v3, v5, :cond_1e
    .line 1588
    const/16 v2, 0x7d
    goto :goto_a
    .line 1589
    :cond_1e
    const/4 v5, 0x5
    if-ne v3, v5, :cond_1f
    .line 1590
    const/16 v2, 0xfa
    goto :goto_a
    .line 1591
    :cond_1f
    const/4 v5, 0x6
    if-ne v3, v5, :cond_20
    .line 1592
    const/16 v2, 0x1f4
    .line 1595
    :cond_20
    :goto_a
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "bandwidth"
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v8
    invoke-static {v5, v7, v8}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1596
    const/4 v5, 0x1
    sput-boolean v5, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    .line 1597
    .end local v2    # "bandwidth":I
    .end local v3    # "loraBW":I
    goto/16 :goto_4
    .line 1598
    :cond_21
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_23
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_23
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x43
    if-ne v5, v3, :cond_23
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x44
    if-ne v5, v3, :cond_23
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_23
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_23
    .line 1625
    const/4 v2, 0x0
    .line 1626
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_f
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1627
    const-string v3, "*#CD#*"
    const-string v5, ""
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 1629
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 1630
    .local v3, "value":I
    const/4 v5, 0x1
    if-lt v3, v5, :cond_22
    const/4 v5, 0x4
    if-gt v3, v5, :cond_22
    .line 1631
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "code_rate"
    invoke-static {v5, v7, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1632
    const/4 v5, 0x1
    sput-boolean v5, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_d
    .line 1632
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    goto :goto_b
    .line 1634
    :catch_d
    move-exception v0
    move-object v2, v0
    .line 1635
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 1636
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v46    # "sender":I
    .restart local v10    # "sender":I
    :cond_22
    :goto_b
    goto/16 :goto_4
    .line 1639
    .end local v10    # "sender":I
    .restart local v46    # "sender":I
    :cond_23
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_25
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_25
    const/4 v3, 0x2
    aget-byte v5, v9, v3
    const/16 v3, 0x43
    if-ne v5, v3, :cond_25
    const/4 v3, 0x3
    aget-byte v5, v9, v3
    const/16 v3, 0x52
    if-ne v5, v3, :cond_25
    const/4 v3, 0x4
    aget-byte v5, v9, v3
    if-ne v5, v2, :cond_25
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_25
    .line 1665
    const/4 v2, 0x0
    .line 1666
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_10
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1667
    const-string v3, "*#CR#*"
    const-string v5, ""
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 1669
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 1670
    .restart local v3    # "value":I
    const/4 v5, 0x1
    if-lt v3, v5, :cond_24
    const/16 v5, 0xfa
    if-gt v3, v5, :cond_24
    .line 1672
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "max_cmd_at_a_channel"
    invoke-static {v5, v7, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f
    .line 1674
    :try_start_11
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "max_cmd_at_a_channel"
    invoke-static {v5, v7}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->MAX_CMD_AT_ONE_CHANNEL:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_f
    .line 1677
    goto :goto_c
    .line 1675
    :catch_e
    move-exception v0
    move-object v5, v0
    .line 1676
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_f
    .line 1676
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_c
    .line 1679
    :catch_f
    move-exception v0
    move-object v2, v0
    .line 1680
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 1681
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v46    # "sender":I
    .restart local v10    # "sender":I
    :cond_24
    :goto_c
    goto/16 :goto_4
    .line 1685
    .end local v10    # "sender":I
    .restart local v46    # "sender":I
    :cond_25
    const/4 v2, 0x0
    .line 1686
    .local v2, "decryptmessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1687
    new-instance v3, Lcom/shareit/messenger/db/Message;
    invoke-direct {v3}, Lcom/shareit/messenger/db/Message;-><init>()V
    .line 1688
    .local v3, "m":Lcom/shareit/messenger/db/Message;
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    move/from16 v10, v46
    invoke-static {v5, v10}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v5
    .line 1689
    .end local v46    # "sender":I
    .local v5, "c":Lcom/shareit/messenger/db/Contact;
    .restart local v10    # "sender":I
    if-eqz v5, :cond_26
    .line 1690
    invoke-virtual {v5}, Lcom/shareit/messenger/db/Contact;->getContactId()Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    invoke-virtual {v3, v7}, Lcom/shareit/messenger/db/Message;->setSenderConId(I)V
    goto :goto_d
    .line 1692
    :cond_26
    invoke-virtual {v3, v10}, Lcom/shareit/messenger/db/Message;->setSenderConId(I)V
    .line 1694
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    .line 1695
    invoke-virtual {v3, v2}, Lcom/shareit/messenger/db/Message;->setMessage(Ljava/lang/String;)V
    .line 1696
    invoke-virtual {v3, v4}, Lcom/shareit/messenger/db/Message;->setMessageId(I)V
    .line 1697
    const/4 v7, 0x5
    invoke-virtual {v3, v7}, Lcom/shareit/messenger/db/Message;->setStatus(I)V
    .line 1698
    const/4 v7, 0x1
    invoke-virtual {v3, v7}, Lcom/shareit/messenger/db/Message;->setType(I)V
    .line 1700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    invoke-virtual {v3, v7, v8}, Lcom/shareit/messenger/db/Message;->setDataTime(J)V
    .line 1701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    .line 1702
    .local v7, "timeInMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v11
    .line 1703
    .local v11, "cal1":Ljava/util/Calendar;
    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V
    .line 1704
    new-instance v12, Ljava/text/SimpleDateFormat;
    const-string v13, "MMM d,yyyy hh:mm:ss aa"
    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    .line 1705
    .local v12, "refFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v13
    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v13
    invoke-virtual {v3, v13}, Lcom/shareit/messenger/db/Message;->setRefTime(Ljava/lang/String;)V
    .line 1706
    sget-object v13, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v13, v3}, Lcom/shareit/messenger/db/Message;->insertInbox(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/shareit/messenger/db/Message;)J
    move-result-wide v13
    const-wide/16 v35, 0x0
    cmp-long v15, v13, v35
    if-lez v15, :cond_28
    .line 1707
    sget-boolean v13, Lcom/shareit/messenger/util/Util;->isUsingApp:Z
    if-eqz v13, :cond_27
    .line 1708
    iget-object v13, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const/4 v14, 0x2
    invoke-static {v13, v14}, Lcom/shareit/messenger/util/Util;->vibratePhone(Landroid/content/Context;I)V
    goto :goto_e
    .line 1710
    :cond_27
    iget-object v13, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->ringBell(Landroid/content/Context;)V
    .line 1715
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "m":Lcom/shareit/messenger/db/Message;
    .end local v5    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v7    # "timeInMillis":J
    .end local v11    # "cal1":Ljava/util/Calendar;
    .end local v12    # "refFormatter":Ljava/text/SimpleDateFormat;
    :cond_28
    :goto_e
    if-lez v10, :cond_29
    .line 1716
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    const/4 v3, 0x2
    const/4 v5, 0x0
    invoke-static {v2, v5, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1717
    const/16 v2, 0x46
    aput-byte v2, v6, v3
    .line 1718
    move-object/from16 v2, v47
    array-length v3, v2
    .line 1718
    .end local v47    # "senderIdBytes":[B
    .local v2, "senderIdBytes":[B
    const/4 v7, 0x3
    invoke-static {v2, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1719
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const/4 v7, -0x1
    invoke-static {v3, v7}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    int-to-byte v3, v3
    const/4 v7, 0x5
    aput-byte v3, v6, v7
    .line 1720
    move-object/from16 v3, v45
    array-length v7, v3
    .line 1720
    .end local v45    # "msgIdBytes":[B
    .local v3, "msgIdBytes":[B
    const/4 v8, 0x6
    invoke-static {v3, v5, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1721
    iget-object v5, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v7, "edu.google.intent.MESSAGE_RECEIVED"
    const-string v8, "Message Received"
    invoke-static {v5, v7, v8}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 1721
    .end local v4    # "messageId":I
    .end local v9    # "decryptmessageArray":[B
    .end local v10    # "sender":I
    .end local v24    # "serverId":I
    .end local v27    # "date":I
    .end local v30    # "min":I
    .end local v33    # "recvindex":I
    .end local v37    # "msgData":[B
    .end local v38    # "combineTime":I
    .end local v39    # "hour":I
    goto :goto_f
    .line 1725
    .end local v2    # "senderIdBytes":[B
    .end local v3    # "msgIdBytes":[B
    .restart local v45    # "msgIdBytes":[B
    .restart local v47    # "senderIdBytes":[B
    :cond_29
    move-object/from16 v3, v45
    move-object/from16 v2, v47
    .line 1725
    .end local v45    # "msgIdBytes":[B
    .end local v47    # "senderIdBytes":[B
    .restart local v2    # "senderIdBytes":[B
    .restart local v3    # "msgIdBytes":[B
    :goto_f
    move/from16 v26, v34
    goto :goto_10
    .line 1725
    .end local v2    # "senderIdBytes":[B
    .end local v28    # "msgIndx":I
    .end local v29    # "no_0f_messages":I
    .end local v31    # "serverIdBytes":[B
    .end local v32    # "i":I
    .end local v34    # "msgLen":I
    .end local v40    # "recvIndexBytes":[B
    .local v3, "msgLen":I
    .local v4, "msgIndx":I
    .local v5, "no_0f_messages":I
    .restart local v8    # "senderIdBytes":[B
    .local v9, "serverIdBytes":[B
    .local v11, "msgIdBytes":[B
    .local v12, "recvIndexBytes":[B
    .local v13, "i":I
    :cond_2a
    move/from16 v26, v3
    move/from16 v28, v4
    move/from16 v29, v5
    move-object v2, v8
    move-object/from16 v31, v9
    move-object v3, v11
    move-object/from16 v40, v12
    move/from16 v32, v13
    .line 1725
    .end local v4    # "msgIndx":I
    .end local v5    # "no_0f_messages":I
    .end local v8    # "senderIdBytes":[B
    .end local v9    # "serverIdBytes":[B
    .end local v11    # "msgIdBytes":[B
    .end local v12    # "recvIndexBytes":[B
    .end local v13    # "i":I
    .restart local v2    # "senderIdBytes":[B
    .local v3, "msgIdBytes":[B
    .restart local v26    # "msgLen":I
    .restart local v28    # "msgIndx":I
    .restart local v29    # "no_0f_messages":I
    .restart local v31    # "serverIdBytes":[B
    .restart local v32    # "i":I
    .restart local v40    # "recvIndexBytes":[B
    :goto_10
    add-int/lit8 v4, v26, 0x11
    move-object/from16 v5, p1
    aget-byte v4, v5, v4
    .line 1726
    .end local v29    # "no_0f_messages":I
    .local v4, "no_0f_messages":I
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "No of messages "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1727
    add-int/lit8 v7, v26, 0x11
    .line 1728
    .end local v28    # "msgIndx":I
    .local v7, "msgIndx":I
    const-string v8, "Message Exchanger"
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "msgIndx after first msg"
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v8, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1729
    move v8, v7
    move/from16 v9, v32
    const/4 v7, 0x1
    .line 1729
    .end local v32    # "i":I
    .local v7, "n":I
    .local v8, "msgIndx":I
    .local v9, "i":I
    :goto_11
    if-ge v7, v4, :cond_59
    .line 1730
    add-int/lit8 v10, v8, 0x1
    aget-byte v10, v5, v10
    const/4 v11, 0x0
    aput-byte v10, v2, v11
    .line 1731
    add-int/lit8 v10, v8, 0x2
    aget-byte v10, v5, v10
    const/4 v12, 0x1
    aput-byte v10, v2, v12
    .line 1733
    add-int/lit8 v10, v8, 0x3
    aget-byte v10, v5, v10
    aput-byte v10, v3, v11
    .line 1734
    add-int/lit8 v10, v8, 0x4
    aget-byte v10, v5, v10
    aput-byte v10, v3, v12
    .line 1735
    add-int/lit8 v10, v8, 0x5
    aget-byte v10, v5, v10
    const/4 v11, 0x2
    aput-byte v10, v3, v11
    .line 1736
    add-int/lit8 v10, v8, 0x6
    aget-byte v10, v5, v10
    const/4 v11, 0x3
    aput-byte v10, v3, v11
    .line 1738
    add-int/lit8 v10, v8, 0x7
    aget-byte v10, v5, v10
    const/4 v11, 0x0
    aput-byte v10, v40, v11
    .line 1739
    add-int/lit8 v10, v8, 0x8
    aget-byte v10, v5, v10
    const/4 v11, 0x1
    aput-byte v10, v40, v11
    .line 1740
    add-int/lit8 v10, v8, 0x9
    aget-byte v10, v5, v10
    const/4 v11, 0x2
    aput-byte v10, v40, v11
    .line 1741
    add-int/lit8 v10, v8, 0xa
    aget-byte v10, v5, v10
    const/4 v11, 0x3
    aput-byte v10, v40, v11
    .line 1743
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v10
    .line 1744
    .restart local v10    # "sender":I
    sget-object v11, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v11, v10}, Lcom/shareit/messenger/db/Contact;->isContactExists(Lnet/sqlcipher/database/SQLiteDatabase;I)Z
    move-result v11
    if-nez v11, :cond_2b
    .line 1745
    new-instance v11, Lcom/shareit/messenger/db/Contact;
    invoke-direct {v11}, Lcom/shareit/messenger/db/Contact;-><init>()V
    .line 1746
    .local v11, "contact":Lcom/shareit/messenger/db/Contact;
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v12
    invoke-virtual {v11, v12}, Lcom/shareit/messenger/db/Contact;->setContactId(Ljava/lang/String;)V
    .line 1747
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    const-string v13, ""
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v12
    invoke-virtual {v11, v12}, Lcom/shareit/messenger/db/Contact;->setName(Ljava/lang/String;)V
    .line 1748
    sget-object v12, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v12, v11}, Lcom/shareit/messenger/db/Contact;->insert(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/shareit/messenger/db/Contact;)J
    .line 1750
    .end local v11    # "contact":Lcom/shareit/messenger/db/Contact;
    :cond_2b
    const/4 v11, 0x2
    new-array v12, v11, [B
    aget-byte v13, v40, v11
    const/4 v11, 0x0
    aput-byte v13, v12, v11
    const/4 v11, 0x3
    aget-byte v13, v40, v11
    const/4 v14, 0x1
    aput-byte v13, v12, v14
    invoke-static {v12}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v12
    .line 1751
    .local v12, "combineTime":I
    aget-byte v13, v40, v11
    and-int/lit8 v11, v13, 0x3f
    .line 1752
    .local v11, "min":I
    shr-int/lit8 v13, v12, 0x6
    and-int/lit8 v13, v13, 0x1f
    .line 1753
    .local v13, "hour":I
    const/4 v14, 0x2
    aget-byte v15, v40, v14
    and-int/lit16 v14, v15, 0xff
    const/4 v15, 0x3
    shr-int/2addr v14, v15
    .line 1754
    .local v14, "date":I
    move/from16 v49, v4
    move-object/from16 v15, v40
    invoke-static {v15}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v4
    .line 1755
    .end local v40    # "recvIndexBytes":[B
    .local v4, "recvindex":I
    .local v15, "recvIndexBytes":[B
    .local v49, "no_0f_messages":I
    move/from16 v50, v12
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v12
    .line 1757
    .local v12, "messageId":I
    .local v50, "combineTime":I
    move-object/from16 v51, v15
    const-string v15, "Message Exchanger"
    .line 1757
    .end local v15    # "recvIndexBytes":[B
    .local v51, "recvIndexBytes":[B
    move-object/from16 v52, v3
    new-instance v3, Ljava/lang/StringBuilder;
    .line 1757
    .end local v3    # "msgIdBytes":[B
    .local v52, "msgIdBytes":[B
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v53, v6
    const-string v6, "Received Contact ID: "
    .line 1757
    .end local v6    # "sends":[B
    .local v53, "sends":[B
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v15, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1758
    const/4 v3, 0x2
    new-array v6, v3, [B
    add-int/lit8 v3, v8, 0xb
    aget-byte v3, v5, v3
    const/4 v15, 0x0
    aput-byte v3, v6, v15
    add-int/lit8 v3, v8, 0xc
    aget-byte v3, v5, v3
    const/16 v24, 0x1
    aput-byte v3, v6, v24
    invoke-static {v6}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v3
    .line 1759
    .end local v26    # "msgLen":I
    .local v3, "msgLen":I
    new-array v6, v3, [B
    .line 1760
    .local v6, "msgData":[B
    move/from16 v54, v9
    add-int/lit8 v9, v8, 0xd
    .line 1760
    .end local v9    # "i":I
    .local v54, "i":I
    invoke-static {v5, v9, v6, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1761
    iget-object v9, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v9, v6, v4}, Lcom/shareit/messenger/crypto/OurEncrypt;->decrypt(Landroid/content/Context;[BI)[B
    move-result-object v9
    .line 1762
    .local v9, "decryptmessageArray":[B
    const-string v15, "Message Exchanger"
    move/from16 v55, v4
    new-instance v4, Ljava/lang/StringBuilder;
    .line 1762
    .end local v4    # "recvindex":I
    .local v55, "recvindex":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "decryptmessage: M2"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v15, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1764
    const-string v4, "receiveMultimsg"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v15, " : "
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v15, " : "
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/String;
    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1765
    invoke-static {v9}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 1767
    const/4 v4, 0x0
    aget-byte v5, v9, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_2c
    const/4 v4, 0x1
    aget-byte v5, v9, v4
    const/16 v4, 0x23
    if-ne v5, v4, :cond_2c
    const/4 v5, 0x2
    aget-byte v15, v9, v5
    const/16 v5, 0x41
    if-ne v15, v5, :cond_2c
    const/4 v5, 0x3
    aget-byte v15, v9, v5
    const/16 v5, 0x57
    if-ne v15, v5, :cond_2c
    const/4 v5, 0x4
    aget-byte v15, v9, v5
    if-ne v15, v4, :cond_2c
    const/4 v4, 0x5
    aget-byte v5, v9, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_2c
    .line 1770
    const/4 v4, 0x0
    .line 1771
    .local v4, "decryptmessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    move-object v4, v5
    .line 1772
    const-string v5, "*#AW#*"
    const-string v15, ""
    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v4
    .line 1774
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v15, "antenna_power"
    invoke-static {v5, v15, v4}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1775
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v15, "auto_change_antenna_power"
    move-object/from16 v56, v4
    const-string v4, "1"
    .line 1775
    .end local v4    # "decryptmessage":Ljava/lang/String;
    .local v56, "decryptmessage":Ljava/lang/String;
    invoke-static {v5, v15, v4}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1776
    const/4 v4, 0x1
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 1777
    const/4 v4, 0x0
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 1778
    .end local v56    # "decryptmessage":Ljava/lang/String;
    nop
    .line 2230
    .end local v2    # "senderIdBytes":[B
    .end local v3    # "msgLen":I
    .end local v6    # "msgData":[B
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .local v7, "date":I
    .local v8, "hour":I
    .local v58, "msgData":[B
    .local v59, "n":I
    .local v60, "msgLen":I
    .local v61, "msgIndx":I
    .local v64, "senderIdBytes":[B
    .local v72, "min":I
    :goto_12
    move-object/from16 v64, v2
    move/from16 v60, v3
    move-object/from16 v58, v6
    move/from16 v59, v7
    move/from16 v61, v8
    move/from16 v72, v11
    move v8, v13
    move v7, v14
    goto/16 :goto_28
    .line 1778
    .end local v58    # "msgData":[B
    .end local v59    # "n":I
    .end local v60    # "msgLen":I
    .end local v61    # "msgIndx":I
    .end local v64    # "senderIdBytes":[B
    .end local v72    # "min":I
    .restart local v2    # "senderIdBytes":[B
    .restart local v3    # "msgLen":I
    .restart local v6    # "msgData":[B
    .local v7, "n":I
    .local v8, "msgIndx":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :cond_2c
    const/4 v4, 0x0
    aget-byte v5, v9, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_2d
    const/4 v4, 0x1
    aget-byte v5, v9, v4
    const/16 v4, 0x23
    if-ne v5, v4, :cond_2d
    const/4 v5, 0x2
    aget-byte v15, v9, v5
    const/16 v5, 0x50
    if-ne v15, v5, :cond_2d
    const/4 v5, 0x3
    aget-byte v15, v9, v5
    const/16 v5, 0x57
    if-ne v15, v5, :cond_2d
    const/4 v5, 0x4
    aget-byte v15, v9, v5
    if-ne v15, v4, :cond_2d
    const/4 v4, 0x5
    aget-byte v5, v9, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_2d
    .line 1781
    const/4 v4, 0x0
    .line 1782
    .restart local v4    # "decryptmessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    move-object v4, v5
    .line 1783
    const-string v5, "*#PW#*"
    const-string v15, ""
    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v4
    .line 1785
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v15, "antenna_power"
    invoke-static {v5, v15, v4}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1786
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v15, "auto_change_antenna_power"
    move-object/from16 v57, v4
    const-string v4, "0"
    .line 1786
    .end local v4    # "decryptmessage":Ljava/lang/String;
    .local v57, "decryptmessage":Ljava/lang/String;
    invoke-static {v5, v15, v4}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1788
    const/4 v4, 0x1
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    .line 1789
    const/4 v4, 0x0
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 1790
    .end local v57    # "decryptmessage":Ljava/lang/String;
    goto :goto_12
    .line 1791
    :cond_2d
    const/4 v4, 0x0
    aget-byte v5, v9, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_33
    const/4 v4, 0x1
    aget-byte v5, v9, v4
    const/16 v4, 0x23
    if-ne v5, v4, :cond_33
    const/4 v5, 0x2
    aget-byte v15, v9, v5
    const/16 v5, 0x44
    if-ne v15, v5, :cond_33
    const/4 v5, 0x3
    aget-byte v15, v9, v5
    const/16 v5, 0x52
    if-ne v15, v5, :cond_33
    const/4 v5, 0x4
    aget-byte v15, v9, v5
    if-ne v15, v4, :cond_33
    const/4 v4, 0x5
    aget-byte v5, v9, v4
    const/16 v4, 0x2a
    if-ne v5, v4, :cond_33
    .line 1795
    const/4 v4, 0x2
    new-array v5, v4, [B
    .line 1796
    .local v5, "recvrId":[B
    sget-object v4, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/4 v15, 0x6
    aget-byte v24, v9, v15
    const/4 v15, 0x0
    aput-byte v24, v4, v15
    .line 1797
    sget-object v4, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    aget-byte v15, v9, v17
    const/16 v24, 0x1
    aput-byte v15, v4, v24
    .line 1798
    sget-object v4, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/16 v15, 0x8
    aget-byte v24, v9, v15
    const/4 v15, 0x2
    aput-byte v24, v4, v15
    .line 1799
    sget-object v4, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    const/16 v18, 0x9
    aget-byte v24, v9, v18
    const/16 v18, 0x3
    aput-byte v24, v4, v18
    .line 1800
    const/16 v4, 0xa
    aget-byte v15, v9, v4
    .line 1801
    .local v15, "status":B
    const/16 v4, 0xb
    move-object/from16 v58, v6
    move/from16 v59, v7
    const/4 v6, 0x2
    const/4 v7, 0x0
    invoke-static {v9, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1802
    .end local v6    # "msgData":[B
    .end local v7    # "n":I
    .restart local v58    # "msgData":[B
    .restart local v59    # "n":I
    sget-object v4, Lcom/shareit/messenger/socket/MessageExchanger;->MsgId:[B
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->convertToInt4([B)I
    move-result v4
    .line 1803
    .local v4, "idMsg":I
    const-string v6, "SendMessageTagDR 2"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v60, v3
    const-string v3, "Msg_ID: "
    .line 1803
    .end local v3    # "msgLen":I
    .restart local v60    # "msgLen":I
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", status: "
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v6, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1805
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    int-to-long v6, v4
    invoke-static {v3, v6, v7}, Lcom/shareit/messenger/db/Message;->get(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/shareit/messenger/db/Message;
    move-result-object v3
    .line 1807
    .local v3, "m":Lcom/shareit/messenger/db/Message;
    if-eqz v3, :cond_32
    .line 1809
    :try_start_13
    const-string v6, "SendMessageTagDR 2"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17
    move/from16 v61, v8
    :try_start_14
    const-string v8, "Msg_ID: "
    .line 1809
    .end local v8    # "msgIndx":I
    .restart local v61    # "msgIndx":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, ", status: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, ", MSG: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/shareit/messenger/db/Message;->getMessage()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1811
    const-string v6, "edu.google.intent.MESSAGE_SENDING_FAILED_TOCLIENT"
    .line 1812
    .local v6, "actionMessage1":Ljava/lang/String;
    const-string v7, "Message Sending Failed To Client"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_16
    .line 1813
    .local v7, "extraMessage1":Ljava/lang/String;
    const/16 v8, -0x194
    .line 1814
    .local v8, "resultCode1":I
    move-object/from16 v62, v6
    const/16 v6, 0xb
    .line 1814
    .end local v6    # "actionMessage1":Ljava/lang/String;
    .local v62, "actionMessage1":Ljava/lang/String;
    if-ne v15, v6, :cond_2e
    .line 1815
    :try_start_15
    const-string v6, "edu.google.intent.MESSAGE_DELIVERED_TOCLIENT"
    .line 1816
    .end local v62    # "actionMessage1":Ljava/lang/String;
    .restart local v6    # "actionMessage1":Ljava/lang/String;
    const-string v24, "Message Sent To Client"
    move-object/from16 v7, v24
    .line 1817
    const/16 v8, 0x8
    goto :goto_14
    .line 1833
    .end local v6    # "actionMessage1":Ljava/lang/String;
    .end local v7    # "extraMessage1":Ljava/lang/String;
    .end local v8    # "resultCode1":I
    :catch_10
    move-exception v0
    move-object/from16 v64, v2
    move-object/from16 v65, v5
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    move/from16 v63, v15
    .line 1833
    .end local v2    # "senderIdBytes":[B
    .end local v5    # "recvrId":[B
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .end local v15    # "status":B
    .local v63, "status":B
    .restart local v64    # "senderIdBytes":[B
    .local v65, "recvrId":[B
    .local v67, "hour":I
    .local v68, "date":I
    .local v69, "min":I
    :goto_13
    move-object v2, v0
    goto/16 :goto_16
    .line 1818
    .end local v63    # "status":B
    .end local v64    # "senderIdBytes":[B
    .end local v65    # "recvrId":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v2    # "senderIdBytes":[B
    .restart local v5    # "recvrId":[B
    .restart local v7    # "extraMessage1":Ljava/lang/String;
    .restart local v8    # "resultCode1":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    .restart local v15    # "status":B
    .restart local v62    # "actionMessage1":Ljava/lang/String;
    :cond_2e
    const/16 v6, 0xc
    if-ne v15, v6, :cond_2f
    .line 1819
    const-string v6, "edu.google.intent.MESSAGE_SENDING_FAILED_TOCLIENT"
    .line 1820
    .end local v62    # "actionMessage1":Ljava/lang/String;
    .restart local v6    # "actionMessage1":Ljava/lang/String;
    const-string v24, "Message Sending Failed To Client"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    move-object/from16 v7, v24
    .line 1821
    const/16 v8, 0x9
    goto :goto_14
    .line 1823
    .end local v6    # "actionMessage1":Ljava/lang/String;
    .restart local v62    # "actionMessage1":Ljava/lang/String;
    :cond_2f
    move-object/from16 v6, v62
    .line 1823
    .end local v62    # "actionMessage1":Ljava/lang/String;
    .restart local v6    # "actionMessage1":Ljava/lang/String;
    :goto_14
    move/from16 v63, v15
    :try_start_16
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15
    .line 1823
    .end local v15    # "status":B
    .restart local v63    # "status":B
    move-object/from16 v64, v2
    :try_start_17
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v2
    .line 1823
    .end local v2    # "senderIdBytes":[B
    .restart local v64    # "senderIdBytes":[B
    invoke-static {v15, v2}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v2
    .line 1824
    .local v2, "c":Lcom/shareit/messenger/db/Contact;
    invoke-virtual {v3}, Lcom/shareit/messenger/db/Message;->getmultiMessage()Ljava/lang/String;
    move-result-object v15
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    move-object/from16 v65, v5
    :try_start_18
    const-string v5, ";"
    .line 1824
    .end local v5    # "recvrId":[B
    .restart local v65    # "recvrId":[B
    invoke-virtual {v15, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    .line 1825
    .local v5, "multicont2":[Ljava/lang/String;
    if-eqz v2, :cond_31
    const/16 v15, -0x194
    if-eq v8, v15, :cond_31
    .line 1826
    array-length v15, v5
    move-object/from16 v66, v5
    const/4 v5, 0x1
    if-le v15, v5, :cond_30
    .line 1827
    .end local v5    # "multicont2":[Ljava/lang/String;
    .local v66, "multicont2":[Ljava/lang/String;
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13
    move/from16 v67, v13
    move/from16 v68, v14
    int-to-long v13, v4
    .line 1827
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    :try_start_19
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11
    move/from16 v69, v11
    :try_start_1a
    invoke-virtual {v3}, Lcom/shareit/messenger/db/Message;->getrecvrMessage()Ljava/lang/String;
    move-result-object v11
    .line 1827
    .end local v11    # "min":I
    .restart local v69    # "min":I
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v11, " "
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/shareit/messenger/db/Contact;->getName()Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static {v5, v13, v14, v11, v8}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)V
    goto :goto_15
    .line 1833
    .end local v2    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v6    # "actionMessage1":Ljava/lang/String;
    .end local v7    # "extraMessage1":Ljava/lang/String;
    .end local v8    # "resultCode1":I
    .end local v66    # "multicont2":[Ljava/lang/String;
    .end local v69    # "min":I
    .restart local v11    # "min":I
    :catch_11
    move-exception v0
    move/from16 v69, v11
    move-object v2, v0
    .line 1833
    .end local v11    # "min":I
    .restart local v69    # "min":I
    goto/16 :goto_16
    .line 1829
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v2    # "c":Lcom/shareit/messenger/db/Contact;
    .restart local v6    # "actionMessage1":Ljava/lang/String;
    .restart local v7    # "extraMessage1":Ljava/lang/String;
    .restart local v8    # "resultCode1":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    .restart local v66    # "multicont2":[Ljava/lang/String;
    :cond_30
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    .line 1829
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    int-to-long v13, v4
    invoke-virtual {v2}, Lcom/shareit/messenger/db/Contact;->getName()Ljava/lang/String;
    move-result-object v11
    invoke-static {v5, v13, v14, v11, v8}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)V
    goto :goto_15
    .line 1832
    .end local v66    # "multicont2":[Ljava/lang/String;
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v5    # "multicont2":[Ljava/lang/String;
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :cond_31
    move-object/from16 v66, v5
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    .line 1832
    .end local v5    # "multicont2":[Ljava/lang/String;
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v66    # "multicont2":[Ljava/lang/String;
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :goto_15
    iget-object v5, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v5, v6, v7}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12
    .line 1836
    .end local v2    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v6    # "actionMessage1":Ljava/lang/String;
    .end local v7    # "extraMessage1":Ljava/lang/String;
    .end local v8    # "resultCode1":I
    .end local v66    # "multicont2":[Ljava/lang/String;
    goto/16 :goto_17
    .line 1833
    :catch_12
    move-exception v0
    goto/16 :goto_13
    .line 1833
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :catch_13
    move-exception v0
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    move-object v2, v0
    .line 1833
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    goto :goto_16
    .line 1833
    .end local v65    # "recvrId":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .local v5, "recvrId":[B
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :catch_14
    move-exception v0
    move-object/from16 v65, v5
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    move-object v2, v0
    .line 1833
    .end local v5    # "recvrId":[B
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v65    # "recvrId":[B
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    goto :goto_16
    .line 1833
    .end local v64    # "senderIdBytes":[B
    .end local v65    # "recvrId":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .local v2, "senderIdBytes":[B
    .restart local v5    # "recvrId":[B
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :catch_15
    move-exception v0
    move-object/from16 v64, v2
    move-object/from16 v65, v5
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    move-object v2, v0
    .line 1833
    .end local v2    # "senderIdBytes":[B
    .end local v5    # "recvrId":[B
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v64    # "senderIdBytes":[B
    .restart local v65    # "recvrId":[B
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    goto :goto_16
    .line 1833
    .end local v63    # "status":B
    .end local v64    # "senderIdBytes":[B
    .end local v65    # "recvrId":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v2    # "senderIdBytes":[B
    .restart local v5    # "recvrId":[B
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    .restart local v15    # "status":B
    :catch_16
    move-exception v0
    move-object/from16 v64, v2
    move-object/from16 v65, v5
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    move/from16 v63, v15
    move-object v2, v0
    .line 1833
    .end local v2    # "senderIdBytes":[B
    .end local v5    # "recvrId":[B
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .end local v15    # "status":B
    .restart local v63    # "status":B
    .restart local v64    # "senderIdBytes":[B
    .restart local v65    # "recvrId":[B
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    goto :goto_16
    .line 1833
    .end local v61    # "msgIndx":I
    .end local v63    # "status":B
    .end local v64    # "senderIdBytes":[B
    .end local v65    # "recvrId":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v2    # "senderIdBytes":[B
    .restart local v5    # "recvrId":[B
    .local v8, "msgIndx":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    .restart local v15    # "status":B
    :catch_17
    move-exception v0
    move-object/from16 v64, v2
    move-object/from16 v65, v5
    move/from16 v61, v8
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    move/from16 v63, v15
    move-object v2, v0
    .line 1834
    .end local v5    # "recvrId":[B
    .end local v8    # "msgIndx":I
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .end local v15    # "status":B
    .local v2, "e":Ljava/lang/Exception;
    .restart local v61    # "msgIndx":I
    .restart local v63    # "status":B
    .restart local v64    # "senderIdBytes":[B
    .restart local v65    # "recvrId":[B
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :goto_16
    const-string v5, "SendMessageTag"
    const-string v6, "Exception Caught"
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1835
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    .line 1835
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "m":Lcom/shareit/messenger/db/Message;
    .end local v4    # "idMsg":I
    .end local v63    # "status":B
    .end local v65    # "recvrId":[B
    goto :goto_17
    .line 1838
    .end local v61    # "msgIndx":I
    .end local v64    # "senderIdBytes":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .local v2, "senderIdBytes":[B
    .restart local v8    # "msgIndx":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :cond_32
    move-object/from16 v64, v2
    move/from16 v61, v8
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    .line 1838
    .end local v2    # "senderIdBytes":[B
    .end local v8    # "msgIndx":I
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v61    # "msgIndx":I
    .restart local v64    # "senderIdBytes":[B
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :goto_17
    goto/16 :goto_1b
    .line 1839
    .end local v58    # "msgData":[B
    .end local v59    # "n":I
    .end local v60    # "msgLen":I
    .end local v61    # "msgIndx":I
    .end local v64    # "senderIdBytes":[B
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v2    # "senderIdBytes":[B
    .local v3, "msgLen":I
    .local v6, "msgData":[B
    .local v7, "n":I
    .restart local v8    # "msgIndx":I
    .restart local v11    # "min":I
    .restart local v13    # "hour":I
    .restart local v14    # "date":I
    :cond_33
    move-object/from16 v64, v2
    move/from16 v60, v3
    move-object/from16 v58, v6
    move/from16 v59, v7
    move/from16 v61, v8
    move/from16 v69, v11
    move/from16 v67, v13
    move/from16 v68, v14
    .line 1839
    .end local v2    # "senderIdBytes":[B
    .end local v3    # "msgLen":I
    .end local v6    # "msgData":[B
    .end local v7    # "n":I
    .end local v8    # "msgIndx":I
    .end local v11    # "min":I
    .end local v13    # "hour":I
    .end local v14    # "date":I
    .restart local v58    # "msgData":[B
    .restart local v59    # "n":I
    .restart local v60    # "msgLen":I
    .restart local v61    # "msgIndx":I
    .restart local v64    # "senderIdBytes":[B
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_34
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_34
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x44
    if-ne v4, v3, :cond_34
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x4d
    if-ne v4, v3, :cond_34
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_34
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_34
    .line 1842
    const-string v2, "Message Exchanger"
    const-string v3, "Delete All Messages"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1843
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "Arlam Parlam Bombay boo oooooo hoooooo"
    const/4 v4, 0x2
    invoke-static {v2, v3, v4}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I)V
    .line 1844
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "Arlam Parlam Bombay boo oooooo hoooooo"
    const/4 v4, 0x1
    invoke-static {v2, v3, v4}, Lcom/shareit/messenger/db/Message;->updateMessage(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I)V
    .line 1845
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-wide/16 v5, -0x1
    invoke-static {v2, v5, v6, v4}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    .line 1846
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-wide/16 v3, -0x1
    const/4 v5, 0x2
    invoke-static {v2, v3, v4, v5}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    goto/16 :goto_1b
    .line 1848
    :cond_34
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_36
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_36
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x46
    if-ne v4, v3, :cond_36
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x52
    if-ne v4, v3, :cond_36
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_36
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_36
    .line 1851
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "frequency"
    invoke-static {v2, v3}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    sput-object v2, Lcom/shareit/messenger/util/Util;->prevChannel:Ljava/lang/String;
    .line 1852
    const/4 v2, 0x0
    .line 1853
    .local v2, "decryptmessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 1854
    const-string v3, "*#FR#*"
    const-string v4, ""
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    .line 1855
    const-string v3, ","
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v3
    .line 1874
    .local v3, "values":[Ljava/lang/String;
    const/4 v4, 0x0
    aget-object v5, v3, v4
    .line 1875
    .local v5, "frequency":Ljava/lang/String;
    const/4 v4, 0x1
    aget-object v6, v3, v4
    move-object v4, v6
    .line 1877
    .local v4, "frequency1":Ljava/lang/String;
    :try_start_1b
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v6
    .line 1878
    .local v6, "value":D
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v13
    .line 1879
    .local v13, "value1":D
    const-string v8, "FrqTimer"
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "before setting "
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    const-string v15, ","
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static {v8, v11}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1881
    const-wide v26, 0x407b600000000000L    # 438.0
    cmpl-double v8, v6, v26
    if-lez v8, :cond_35
    const-wide v26, 0x407ce00000000000L    # 462.0
    cmpg-double v8, v6, v26
    if-gtz v8, :cond_35
    .line 1883
    sget-object v8, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "frequency"
    invoke-static {v8, v11, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1884
    const-string v8, "FrqTimer"
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "after setting "
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static {v8, v11}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1885
    const-string v8, "FrqTimer"
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "after setting from DB "
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_19
    move-object/from16 v70, v2
    :try_start_1c
    const-string v2, "frequency"
    .line 1885
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .local v70, "decryptmessage":Ljava/lang/String;
    invoke-static {v15, v2}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v8, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1886
    const/4 v2, 0x1
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 1887
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->setFreqFrmServer:Z
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_18
    .line 1888
    const/4 v10, 0x0
    .line 1888
    .end local v6    # "value":D
    .end local v13    # "value1":D
    goto :goto_18
    .line 1892
    :catch_18
    move-exception v0
    move-object v2, v0
    goto :goto_19
    .line 1894
    .end local v70    # "decryptmessage":Ljava/lang/String;
    .restart local v2    # "decryptmessage":Ljava/lang/String;
    :cond_35
    move-object/from16 v70, v2
    .line 1894
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .restart local v70    # "decryptmessage":Ljava/lang/String;
    :goto_18
    goto :goto_1a
    .line 1892
    .end local v70    # "decryptmessage":Ljava/lang/String;
    .restart local v2    # "decryptmessage":Ljava/lang/String;
    :catch_19
    move-exception v0
    move-object/from16 v70, v2
    move-object v2, v0
    .line 1893
    .local v2, "e":Ljava/lang/NumberFormatException;
    .restart local v70    # "decryptmessage":Ljava/lang/String;
    :goto_19
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 1895
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "values":[Ljava/lang/String;
    .end local v4    # "frequency1":Ljava/lang/String;
    .end local v5    # "frequency":Ljava/lang/String;
    .end local v70    # "decryptmessage":Ljava/lang/String;
    :goto_1a
    nop
    .line 2230
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .local v7, "date":I
    .local v8, "hour":I
    .restart local v72    # "min":I
    :goto_1b
    move/from16 v8, v67
    move/from16 v7, v68
    move/from16 v72, v69
    goto/16 :goto_28
    .line 1896
    .end local v7    # "date":I
    .end local v8    # "hour":I
    .end local v72    # "min":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :cond_36
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_37
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_37
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x53
    if-ne v4, v3, :cond_37
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x50
    if-ne v4, v3, :cond_37
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_37
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_37
    .line 1899
    const/4 v2, 0x6
    aget-byte v3, v9, v2
    .line 1902
    .local v3, "CarrierTimevalue":I
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v4, "spreading_factor"
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v5
    invoke-static {v2, v4, v5}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1905
    const/4 v2, 0x1
    sput-boolean v2, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    .line 1907
    .end local v3    # "CarrierTimevalue":I
    goto :goto_1b
    .line 1908
    :cond_37
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_38
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_38
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x53
    if-ne v4, v3, :cond_38
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x46
    if-ne v4, v3, :cond_38
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_38
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_38
    .line 1911
    array-length v2, v9
    const/4 v3, 0x6
    sub-int/2addr v2, v3
    new-array v2, v2, [B
    .line 1912
    .local v2, "scan":[B
    array-length v4, v9
    sub-int/2addr v4, v3
    const/4 v5, 0x0
    invoke-static {v9, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1913
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    .line 1914
    .local v3, "frequency":Ljava/lang/String;
    const-string v4, ","
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    .line 1915
    .local v4, "values":[Ljava/lang/String;
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v6, "scan_frequencies"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const/4 v8, 0x0
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x1
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x2
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x3
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x4
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x5
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x6
    aget-object v11, v4, v8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-object v8, v4, v17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v5, v6, v7}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 1917
    const/4 v5, 0x1
    sput-boolean v5, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    .line 1918
    .end local v2    # "scan":[B
    .end local v3    # "frequency":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    goto/16 :goto_1b
    .line 1919
    :cond_38
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_39
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_39
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x52
    if-ne v4, v3, :cond_39
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x50
    if-ne v4, v3, :cond_39
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_39
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_39
    .line 1922
    new-instance v2, Landroid/content/Intent;
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-class v4, Lcom/shareit/messenger/app/LoginActivity;
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    .line 1923
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "action"
    const-string v4, "PASSWORD RESET"
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .line 1924
    iget-object v3, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    .line 1925
    .end local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_1b
    .line 1926
    :cond_39
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3a
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_3a
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x52
    if-ne v4, v3, :cond_3a
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x4d
    if-ne v4, v3, :cond_3a
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_3a
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3a
    .line 1950
    invoke-static {}, Lcom/shareit/messenger/db/DBHelper;->reset()V
    goto/16 :goto_1b
    .line 1952
    :cond_3a
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3c
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_3c
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x48
    if-ne v4, v3, :cond_3c
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x53
    if-ne v4, v3, :cond_3c
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_3c
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3c
    .line 1955
    const-string v2, "Message Exchanger"
    const-string v3, "Scan Handy Messages"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1956
    array-length v2, v9
    const/4 v3, 0x6
    sub-int/2addr v2, v3
    new-array v2, v2, [B
    .line 1957
    .local v2, "tempArray":[B
    array-length v4, v2
    const/4 v5, 0x0
    invoke-static {v9, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1958
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    .line 1959
    .local v3, "myPizza":Ljava/lang/String;
    const-string v4, "Message Exchanger"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "myPizza "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1960
    const-string v4, "\\*"
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    .line 1961
    .restart local v4    # "values":[Ljava/lang/String;
    const-string v5, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "values.length "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v7, v4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1962
    const-string v5, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "values[0] "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v7, 0x0
    aget-object v8, v4, v7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1963
    const-string v5, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "values[1] "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v7, 0x1
    aget-object v8, v4, v7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1964
    const-string v5, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "values[2] "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v7, 0x2
    aget-object v8, v4, v7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1965
    const-string v5, "Message Exchanger"
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "values[3] "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v7, 0x3
    aget-object v8, v4, v7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1966
    array-length v5, v4
    if-le v5, v7, :cond_3b
    .line 1967
    const/4 v5, 0x0
    aget-object v6, v4, v5
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v5
    sput-object v5, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    .line 1968
    const/4 v5, 0x1
    aget-object v6, v4, v5
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v5
    sput-object v5, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    .line 1969
    const/4 v5, 0x2
    aget-object v6, v4, v5
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
    int-to-double v5, v5
    sput-wide v5, Lcom/shareit/messenger/util/Util;->spacing:D
    .line 1970
    const/4 v5, 0x3
    aget-object v6, v4, v5
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
    sput v5, Lcom/shareit/messenger/util/Util;->threshold:I
    .line 1971
    sget-object v5, Lcom/shareit/messenger/util/Util;->startFrequency:Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v5
    const-wide v7, 0x406ae00000000000L    # 215.0
    cmpl-double v11, v5, v7
    if-lez v11, :cond_3b
    sget-object v5, Lcom/shareit/messenger/util/Util;->endFrequency:Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v5
    const-wide v7, 0x406ec00000000000L    # 246.0
    cmpg-double v11, v5, v7
    if-gtz v11, :cond_3b
    .line 1972
    const/4 v5, 0x1
    sput-boolean v5, Lcom/shareit/messenger/util/Util;->setScanningFrequency:Z
    .line 1975
    .end local v2    # "tempArray":[B
    .end local v3    # "myPizza":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_3b
    goto/16 :goto_1b
    .line 1977
    :cond_3c
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3d
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_3d
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x47
    if-ne v4, v3, :cond_3d
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x4c
    if-ne v4, v3, :cond_3d
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_3d
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3d
    .line 1980
    const-string v2, "receiveMultimsg"
    const-string v3, "Yes in GL"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1982
    const/4 v2, 0x2
    new-array v3, v2, [B
    .line 1983
    .local v3, "recvrId":[B
    const/4 v4, 0x0
    const/4 v5, 0x6
    invoke-static {v9, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 1984
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v2
    iput v2, v1, Lcom/shareit/messenger/socket/MessageExchanger;->recvrGL:I
    .line 1985
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->replyGLcmd()V
    .line 1987
    .end local v3    # "recvrId":[B
    goto/16 :goto_1b
    .line 1989
    :cond_3d
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3f
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_3f
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x4d
    if-ne v4, v3, :cond_3f
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x4c
    if-ne v4, v3, :cond_3f
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_3f
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_3f
    .line 2015
    const/4 v2, 0x0
    .line 2016
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_1d
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 2017
    const-string v3, "*#ML#*"
    const-string v4, ""
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 2019
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 2020
    .local v3, "value":I
    const/4 v4, 0x1
    if-lt v3, v4, :cond_3e
    const/16 v4, 0xe6
    if-gt v3, v4, :cond_3e
    .line 2021
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "max_msg_length"
    invoke-static {v4, v5, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_1b
    .line 2023
    :try_start_1e
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "max_msg_length"
    invoke-static {v4, v5}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    sput v4, Lcom/shareit/messenger/util/Util;->MAX_TEXT_LENGTH:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_1b
    .line 2026
    goto :goto_1c
    .line 2024
    :catch_1a
    move-exception v0
    move-object v4, v0
    .line 2025
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_1b
    .line 2025
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1c
    .line 2028
    :catch_1b
    move-exception v0
    move-object v2, v0
    .line 2029
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2030
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v7    # "date":I
    .restart local v8    # "hour":I
    .restart local v72    # "min":I
    :cond_3e
    :goto_1c
    goto/16 :goto_1b
    .line 2033
    .end local v7    # "date":I
    .end local v8    # "hour":I
    .end local v72    # "min":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :cond_3f
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_41
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_41
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x43
    if-ne v4, v3, :cond_41
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x4d
    if-ne v4, v3, :cond_41
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_41
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_41
    .line 2060
    const/4 v2, 0x0
    .line 2061
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_20
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 2062
    const-string v3, "*#CM#*"
    const-string v4, ""
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 2064
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 2065
    .restart local v3    # "value":I
    const/4 v4, 0x1
    if-lt v3, v4, :cond_40
    const/16 v4, 0xfa
    if-gt v3, v4, :cond_40
    .line 2067
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "max_msg_at_a_channel"
    invoke-static {v4, v5, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_1d
    .line 2069
    :try_start_21
    sget-object v4, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "max_msg_at_a_channel"
    invoke-static {v4, v5}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    sput v4, Lcom/shareit/messenger/util/Util;->MAX_MSGS_AT_ONE_CHANNEL:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_1d
    .line 2072
    goto :goto_1d
    .line 2070
    :catch_1c
    move-exception v0
    move-object v4, v0
    .line 2071
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_22
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_1d
    .line 2071
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1d
    .line 2074
    :catch_1d
    move-exception v0
    move-object v2, v0
    .line 2075
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2076
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v7    # "date":I
    .restart local v8    # "hour":I
    .restart local v72    # "min":I
    :cond_40
    :goto_1d
    goto/16 :goto_1b
    .line 2078
    .end local v7    # "date":I
    .end local v8    # "hour":I
    .end local v72    # "min":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :cond_41
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_4c
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_4c
    const/4 v3, 0x2
    aget-byte v4, v9, v3
    const/16 v3, 0x42
    if-ne v4, v3, :cond_4c
    const/4 v3, 0x3
    aget-byte v4, v9, v3
    const/16 v3, 0x57
    if-ne v4, v3, :cond_4c
    const/4 v3, 0x4
    aget-byte v4, v9, v3
    if-ne v4, v2, :cond_4c
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_4c
    .line 2082
    const/4 v2, 0x6
    aget-byte v3, v9, v2
    .line 2083
    .local v3, "loraBW":I
    const/4 v2, 0x0
    .line 2085
    .local v2, "bandwidth":I
    if-nez v3, :cond_42
    .line 2086
    const/4 v2, 0x7
    .line 2107
    const/16 v4, 0x8
    :goto_1e
    const/16 v5, 0x9
    :goto_1f
    const/16 v6, 0xa
    :goto_20
    const/4 v7, 0x6
    goto :goto_21
    .line 2087
    :cond_42
    const/16 v4, 0x8
    if-ne v3, v4, :cond_43
    .line 2088
    const/16 v2, 0xa
    goto :goto_1e
    .line 2089
    :cond_43
    const/4 v5, 0x1
    if-ne v3, v5, :cond_44
    .line 2090
    const/16 v2, 0xf
    goto :goto_1e
    .line 2091
    :cond_44
    const/16 v5, 0x9
    if-ne v3, v5, :cond_45
    .line 2092
    const/16 v2, 0x14
    goto :goto_1f
    .line 2093
    :cond_45
    const/4 v6, 0x2
    if-ne v3, v6, :cond_46
    .line 2094
    const/16 v2, 0x1f
    goto :goto_1f
    .line 2095
    :cond_46
    const/16 v6, 0xa
    if-ne v3, v6, :cond_47
    .line 2096
    const/16 v2, 0x29
    goto :goto_20
    .line 2097
    :cond_47
    const/4 v7, 0x3
    if-ne v3, v7, :cond_48
    .line 2098
    const/16 v2, 0x3e
    goto :goto_20
    .line 2099
    :cond_48
    const/4 v7, 0x4
    if-ne v3, v7, :cond_49
    .line 2100
    const/16 v2, 0x7d
    goto :goto_20
    .line 2101
    :cond_49
    const/4 v7, 0x5
    if-ne v3, v7, :cond_4a
    .line 2102
    const/16 v2, 0xfa
    goto :goto_20
    .line 2103
    :cond_4a
    const/4 v7, 0x6
    if-ne v3, v7, :cond_4b
    .line 2104
    const/16 v2, 0x1f4
    .line 2107
    :cond_4b
    :goto_21
    sget-object v8, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "bandwidth"
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v13
    invoke-static {v8, v11, v13}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2108
    const/4 v8, 0x1
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    .line 2109
    .end local v2    # "bandwidth":I
    .end local v3    # "loraBW":I
    goto/16 :goto_1b
    .line 2110
    :cond_4c
    const/16 v4, 0x8
    const/16 v5, 0x9
    const/16 v6, 0xa
    const/4 v7, 0x6
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_4e
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_4e
    const/4 v3, 0x2
    aget-byte v8, v9, v3
    const/16 v3, 0x43
    if-ne v8, v3, :cond_4e
    const/4 v3, 0x3
    aget-byte v8, v9, v3
    const/16 v3, 0x44
    if-ne v8, v3, :cond_4e
    const/4 v3, 0x4
    aget-byte v8, v9, v3
    if-ne v8, v2, :cond_4e
    const/4 v2, 0x5
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_4e
    .line 2137
    const/4 v2, 0x0
    .line 2138
    .local v2, "decryptmessage":Ljava/lang/String;
    :try_start_23
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 2139
    const-string v3, "*#CD#*"
    const-string v8, ""
    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    move-object v2, v3
    .line 2141
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 2142
    .local v3, "value":I
    const/4 v8, 0x1
    if-lt v3, v8, :cond_4d
    const/4 v8, 0x4
    if-gt v3, v8, :cond_4d
    .line 2143
    sget-object v8, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v11, "code_rate"
    invoke-static {v8, v11, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 2144
    const/4 v8, 0x1
    sput-boolean v8, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_1e
    .line 2144
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "value":I
    goto :goto_22
    .line 2146
    :catch_1e
    move-exception v0
    move-object v2, v0
    .line 2147
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2148
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v7    # "date":I
    .restart local v8    # "hour":I
    .restart local v72    # "min":I
    :cond_4d
    :goto_22
    goto/16 :goto_1b
    .line 2150
    .end local v7    # "date":I
    .end local v8    # "hour":I
    .end local v72    # "min":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :cond_4e
    const/4 v2, 0x0
    aget-byte v3, v9, v2
    const/16 v2, 0x2a
    if-ne v3, v2, :cond_53
    const/4 v2, 0x1
    aget-byte v3, v9, v2
    const/16 v2, 0x23
    if-ne v3, v2, :cond_51
    const/4 v3, 0x2
    aget-byte v8, v9, v3
    const/16 v3, 0x43
    if-ne v8, v3, :cond_51
    const/4 v3, 0x3
    aget-byte v8, v9, v3
    const/16 v11, 0x52
    if-ne v8, v11, :cond_50
    const/4 v8, 0x4
    aget-byte v13, v9, v8
    if-ne v13, v2, :cond_52
    const/4 v13, 0x5
    aget-byte v14, v9, v13
    const/16 v13, 0x2a
    if-ne v14, v13, :cond_54
    .line 2176
    const/4 v14, 0x0
    .line 2177
    .local v14, "decryptmessage":Ljava/lang/String;
    :try_start_24
    new-instance v15, Ljava/lang/String;
    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V
    move-object v14, v15
    .line 2178
    const-string v15, "*#CR#*"
    const-string v2, ""
    invoke-virtual {v14, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    .line 2180
    .end local v14    # "decryptmessage":Ljava/lang/String;
    .local v2, "decryptmessage":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v14
    .line 2181
    .local v14, "value":I
    const/4 v15, 0x1
    if-lt v14, v15, :cond_4f
    const/16 v15, 0xfa
    if-gt v14, v15, :cond_4f
    .line 2183
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v3, "max_cmd_at_a_channel"
    invoke-static {v15, v3, v2}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_20
    .line 2185
    :try_start_25
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v15, "max_cmd_at_a_channel"
    invoke-static {v3, v15}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    sput v3, Lcom/shareit/messenger/util/Util;->MAX_CMD_AT_ONE_CHANNEL:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_20
    .line 2188
    goto :goto_23
    .line 2186
    :catch_1f
    move-exception v0
    move-object v3, v0
    .line 2187
    .local v3, "e":Ljava/lang/Exception;
    :try_start_26
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_20
    .line 2187
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v14    # "value":I
    goto :goto_23
    .line 2190
    :catch_20
    move-exception v0
    move-object v2, v0
    .line 2191
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    .line 2192
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v67    # "hour":I
    .end local v68    # "date":I
    .end local v69    # "min":I
    .restart local v7    # "date":I
    .restart local v8    # "hour":I
    .restart local v72    # "min":I
    :cond_4f
    :goto_23
    goto/16 :goto_1b
    .line 2195
    .end local v7    # "date":I
    .end local v8    # "hour":I
    .end local v72    # "min":I
    .restart local v67    # "hour":I
    .restart local v68    # "date":I
    .restart local v69    # "min":I
    :cond_50
    const/4 v8, 0x4
    goto :goto_24
    :cond_51
    const/4 v8, 0x4
    const/16 v11, 0x52
    :cond_52
    :goto_24
    const/16 v13, 0x2a
    goto :goto_25
    :cond_53
    move v13, v2
    const/4 v8, 0x4
    const/16 v11, 0x52
    :cond_54
    :goto_25
    const/4 v2, 0x0
    .line 2196
    .local v2, "decryptmessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    move-object v2, v3
    .line 2197
    new-instance v3, Lcom/shareit/messenger/db/Message;
    invoke-direct {v3}, Lcom/shareit/messenger/db/Message;-><init>()V
    .line 2198
    .local v3, "m":Lcom/shareit/messenger/db/Message;
    sget-object v14, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v14, v10}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v14
    .line 2199
    .local v14, "c":Lcom/shareit/messenger/db/Contact;
    if-eqz v14, :cond_55
    .line 2200
    invoke-virtual {v14}, Lcom/shareit/messenger/db/Contact;->getContactId()Ljava/lang/String;
    move-result-object v15
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v15
    invoke-virtual {v3, v15}, Lcom/shareit/messenger/db/Message;->setSenderConId(I)V
    goto :goto_26
    .line 2202
    :cond_55
    invoke-virtual {v3, v10}, Lcom/shareit/messenger/db/Message;->setSenderConId(I)V
    .line 2204
    :goto_26
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    .line 2205
    invoke-virtual {v3, v2}, Lcom/shareit/messenger/db/Message;->setMessage(Ljava/lang/String;)V
    .line 2206
    invoke-virtual {v3, v12}, Lcom/shareit/messenger/db/Message;->setMessageId(I)V
    .line 2207
    const/4 v15, 0x5
    invoke-virtual {v3, v15}, Lcom/shareit/messenger/db/Message;->setStatus(I)V
    .line 2208
    const/4 v4, 0x1
    invoke-virtual {v3, v4}, Lcom/shareit/messenger/db/Message;->setType(I)V
    .line 2209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v5
    .line 2210
    .local v5, "now":Ljava/util/Calendar;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v7, v68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    .line 2210
    .end local v68    # "date":I
    .restart local v7    # "date":I
    const-string v8, "/"
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 0x2
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I
    move-result v16
    add-int/lit8 v8, v16, 0x1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, "/"
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I
    move-result v8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, " "
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v8, v67
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    .line 2210
    .end local v67    # "hour":I
    .restart local v8    # "hour":I
    const-string v4, ":"
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v4, v69
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    .line 2210
    .end local v69    # "min":I
    .local v4, "min":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    .line 2211
    .local v6, "time":Ljava/lang/String;
    new-instance v11, Ljava/text/SimpleDateFormat;
    const-string v13, "dd/MM/yyyy HH:mm"
    invoke-direct {v11, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    .line 2212
    .local v11, "formatter":Ljava/text/SimpleDateFormat;
    move/from16 v72, v4
    move-object/from16 v71, v5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    .line 2212
    .end local v4    # "min":I
    .end local v5    # "now":Ljava/util/Calendar;
    .local v71, "now":Ljava/util/Calendar;
    .restart local v72    # "min":I
    invoke-virtual {v3, v4, v5}, Lcom/shareit/messenger/db/Message;->setDataTime(J)V
    .line 2213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    .line 2214
    .local v4, "timeInMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v13
    .line 2215
    .local v13, "cal1":Ljava/util/Calendar;
    invoke-virtual {v13, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V
    .line 2216
    new-instance v15, Ljava/text/SimpleDateFormat;
    move-object/from16 v73, v2
    const-string v2, "MMM d,yyyy hh:mm:ss aa"
    .line 2216
    .end local v2    # "decryptmessage":Ljava/lang/String;
    .local v73, "decryptmessage":Ljava/lang/String;
    invoke-direct {v15, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    move-object v2, v15
    .line 2217
    .local v2, "refFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v15
    invoke-virtual {v2, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v15
    invoke-virtual {v3, v15}, Lcom/shareit/messenger/db/Message;->setRefTime(Ljava/lang/String;)V
    .line 2218
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v15, v3}, Lcom/shareit/messenger/db/Message;->insertInbox(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/shareit/messenger/db/Message;)J
    move-result-wide v15
    const-wide/16 v20, 0x0
    cmp-long v19, v15, v20
    if-lez v19, :cond_57
    .line 2219
    sget-boolean v15, Lcom/shareit/messenger/util/Util;->isUsingApp:Z
    if-eqz v15, :cond_56
    .line 2220
    iget-object v15, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    move-object/from16 v74, v2
    const/4 v2, 0x2
    invoke-static {v15, v2}, Lcom/shareit/messenger/util/Util;->vibratePhone(Landroid/content/Context;I)V
    goto :goto_27
    .line 2222
    :cond_56
    move-object/from16 v74, v2
    const/4 v2, 0x2
    .line 2222
    .end local v2    # "refFormatter":Ljava/text/SimpleDateFormat;
    .local v74, "refFormatter":Ljava/text/SimpleDateFormat;
    iget-object v15, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v15}, Lcom/shareit/messenger/util/Util;->ringBell(Landroid/content/Context;)V
    .line 2223
    iget-object v15, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v15}, Lcom/shareit/messenger/util/Util;->sendNotification(Landroid/content/Context;)V
    goto :goto_27
    .line 2226
    .end local v74    # "refFormatter":Ljava/text/SimpleDateFormat;
    .restart local v2    # "refFormatter":Ljava/text/SimpleDateFormat;
    :cond_57
    move-object/from16 v74, v2
    const/4 v2, 0x2
    .line 2226
    .end local v2    # "refFormatter":Ljava/text/SimpleDateFormat;
    .restart local v74    # "refFormatter":Ljava/text/SimpleDateFormat;
    :goto_27
    iget-object v15, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v2, "edu.google.intent.MESSAGE_RECEIVED"
    move-object/from16 v75, v3
    const-string v3, "Message Received"
    .line 2226
    .end local v3    # "m":Lcom/shareit/messenger/db/Message;
    .local v75, "m":Lcom/shareit/messenger/db/Message;
    invoke-static {v15, v2, v3}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 2230
    .end local v4    # "timeInMillis":J
    .end local v6    # "time":Ljava/lang/String;
    .end local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v13    # "cal1":Ljava/util/Calendar;
    .end local v14    # "c":Lcom/shareit/messenger/db/Contact;
    .end local v71    # "now":Ljava/util/Calendar;
    .end local v73    # "decryptmessage":Ljava/lang/String;
    .end local v74    # "refFormatter":Ljava/text/SimpleDateFormat;
    .end local v75    # "m":Lcom/shareit/messenger/db/Message;
    :goto_28
    if-lez v10, :cond_58
    .line 2231
    move-object/from16 v2, v64
    array-length v3, v2
    .line 2231
    .end local v64    # "senderIdBytes":[B
    .local v2, "senderIdBytes":[B
    move-object/from16 v4, v53
    move/from16 v5, v54
    const/4 v6, 0x0
    invoke-static {v2, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2232
    .end local v53    # "sends":[B
    .end local v54    # "i":I
    .local v4, "sends":[B
    .local v5, "i":I
    add-int/lit8 v3, v5, 0x2
    move-object/from16 v11, v52
    array-length v13, v11
    .line 2232
    .end local v52    # "msgIdBytes":[B
    .local v11, "msgIdBytes":[B
    invoke-static {v11, v6, v4, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    goto :goto_29
    .line 2235
    .end local v2    # "senderIdBytes":[B
    .end local v4    # "sends":[B
    .end local v5    # "i":I
    .end local v11    # "msgIdBytes":[B
    .restart local v52    # "msgIdBytes":[B
    .restart local v53    # "sends":[B
    .restart local v54    # "i":I
    .restart local v64    # "senderIdBytes":[B
    :cond_58
    move-object/from16 v11, v52
    move-object/from16 v4, v53
    move/from16 v5, v54
    move-object/from16 v2, v64
    .line 2235
    .end local v52    # "msgIdBytes":[B
    .end local v53    # "sends":[B
    .end local v54    # "i":I
    .end local v64    # "senderIdBytes":[B
    .restart local v2    # "senderIdBytes":[B
    .restart local v4    # "sends":[B
    .restart local v5    # "i":I
    .restart local v11    # "msgIdBytes":[B
    :goto_29
    add-int/lit8 v3, v5, 0x6
    .line 2236
    .end local v5    # "i":I
    .local v3, "i":I
    add-int/lit8 v5, v61, 0xc
    add-int v5, v5, v60
    .line 2237
    .end local v61    # "msgIndx":I
    .local v5, "msgIndx":I
    const-string v6, "Message Exchanger"
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "print msgIndx: "
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    invoke-static {v6, v13}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2238
    const-string v6, "Message Exchanger"
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "print i: "
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    invoke-static {v6, v13}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 1729
    .end local v7    # "date":I
    .end local v8    # "hour":I
    .end local v9    # "decryptmessageArray":[B
    .end local v50    # "combineTime":I
    .end local v58    # "msgData":[B
    .end local v72    # "min":I
    add-int/lit8 v7, v59, 0x1
    .line 1729
    .end local v59    # "n":I
    .local v7, "n":I
    move v9, v3
    move-object v6, v4
    move v8, v5
    move-object v3, v11
    move/from16 v4, v49
    move-object/from16 v40, v51
    move/from16 v26, v60
    move-object/from16 v5, p1
    goto/16 :goto_11
    .line 2240
    .end local v5    # "msgIndx":I
    .end local v7    # "n":I
    .end local v10    # "sender":I
    .end local v11    # "msgIdBytes":[B
    .end local v12    # "messageId":I
    .end local v49    # "no_0f_messages":I
    .end local v51    # "recvIndexBytes":[B
    .end local v55    # "recvindex":I
    .end local v60    # "msgLen":I
    .local v3, "msgIdBytes":[B
    .local v4, "no_0f_messages":I
    .local v6, "sends":[B
    .local v8, "msgIndx":I
    .local v9, "i":I
    .restart local v26    # "msgLen":I
    .restart local v40    # "recvIndexBytes":[B
    :cond_59
    move-object v11, v3
    move/from16 v49, v4
    move-object v4, v6
    move/from16 v61, v8
    move v5, v9
    move-object/from16 v51, v40
    .line 2240
    .end local v3    # "msgIdBytes":[B
    .end local v6    # "sends":[B
    .end local v8    # "msgIndx":I
    .end local v9    # "i":I
    .end local v40    # "recvIndexBytes":[B
    .local v4, "sends":[B
    .local v5, "i":I
    .restart local v11    # "msgIdBytes":[B
    .restart local v49    # "no_0f_messages":I
    .restart local v51    # "recvIndexBytes":[B
    .restart local v61    # "msgIndx":I
    add-int/lit8 v9, v5, 0x7
    new-array v3, v9, [B
    .line 2241
    .local v3, "dataToSend":[B
    const/4 v6, 0x0
    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2242
    iget-object v7, v1, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v7
    .line 2243
    .local v7, "handy":[B
    array-length v8, v7
    invoke-static {v7, v6, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2245
    add-int/lit8 v9, v5, 0x2
    sget-byte v6, Lcom/shareit/messenger/util/Util;->RssiSent:B
    aput-byte v6, v3, v9
    .line 2246
    add-int/lit8 v9, v5, 0x3
    sget-byte v6, Lcom/shareit/messenger/util/Util;->BattVsent:B
    aput-byte v6, v3, v9
    .line 2247
    add-int/lit8 v9, v5, 0x4
    const/16 v6, 0x4d
    aput-byte v6, v3, v9
    .line 2248
    add-int/lit8 v9, v5, 0x5
    aput-byte v6, v3, v9
    .line 2249
    add-int/lit8 v9, v5, 0x6
    aput-byte v6, v3, v9
    .line 2250
    array-length v6, v3
    const/16 v8, 0xff
    if-gt v6, v8, :cond_5a
    .line 2251
    invoke-virtual {v1, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 2252
    const-string v6, "Message Exchanger"
    const-string v8, "Delivery Replied"
    invoke-static {v6, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2257
    .end local v2    # "senderIdBytes":[B
    .end local v3    # "dataToSend":[B
    .end local v5    # "i":I
    .end local v7    # "handy":[B
    .end local v11    # "msgIdBytes":[B
    .end local v31    # "serverIdBytes":[B
    .end local v51    # "recvIndexBytes":[B
    :cond_5a
    move/from16 v29, v49
    move/from16 v28, v61
    goto :goto_2a
    .line 2257
    .end local v26    # "msgLen":I
    .end local v49    # "no_0f_messages":I
    .end local v61    # "msgIndx":I
    .local v3, "msgLen":I
    .local v4, "msgIndx":I
    .local v5, "no_0f_messages":I
    .restart local v6    # "sends":[B
    :cond_5b
    move/from16 v26, v3
    move/from16 v28, v4
    move/from16 v29, v5
    move-object v4, v6
    .line 2257
    .end local v3    # "msgLen":I
    .end local v5    # "no_0f_messages":I
    .end local v6    # "sends":[B
    .local v4, "sends":[B
    .restart local v26    # "msgLen":I
    .restart local v28    # "msgIndx":I
    .restart local v29    # "no_0f_messages":I
    :goto_2a
    return-void
.end method
.method private replyGLcmd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
    .line 2797
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gps:Lcom/shareit/messenger/app/GpsClass;
    if-nez v0, :cond_0
    .line 2798
    new-instance v0, Lcom/shareit/messenger/app/GpsClass;
    iget-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-direct {v0, v1}, Lcom/shareit/messenger/app/GpsClass;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gps:Lcom/shareit/messenger/app/GpsClass;
    .line 2802
    :cond_0
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/shareit/messenger/socket/MessageExchanger$1;
    invoke-direct {v1, p0}, Lcom/shareit/messenger/socket/MessageExchanger$1;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    .line 2807
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    .line 2810
    :try_start_0
    const-string v0, "Gps Command"
    const-string v1, "goes in gps method"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2811
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsThreadRunning:Z
    if-nez v0, :cond_1
    .line 2812
    const-string v0, "Gps Command"
    const-string v1, "goes in gps thread running"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2813
    new-instance v0, Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;
    invoke-direct {v0, p0}, Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpstimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;
    .line 2814
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpstimer:Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;
    invoke-virtual {v0}, Lcom/shareit/messenger/socket/MessageExchanger$GpsTimer;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .line 2818
    :cond_1
    goto :goto_0
    .line 2816
    :catch_0
    move-exception v0
    .line 2817
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    .line 2820
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->CloseGPS()V
    .line 2821
    return-void
.end method
.method private reverseBitShifting([B)[B
    .locals 5
    .param p1, "tempRecv"    # [B
    .line 2902
    const/4 v0, 0x0
    array-length v1, p1
    add-int/lit8 v1, v1, -0x1
    .line 2903
    .local v1, "n":I
    const-string v2, "Message Exchanger"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "n "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2904
    nop
    .line 2904
    .local v0, "j":I
    :goto_0
    array-length v2, p1
    div-int/lit8 v2, v2, 0x2
    if-ge v0, v2, :cond_0
    .line 2905
    aget-byte v2, p1, v0
    aget-byte v3, p1, v1
    invoke-static {v2, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->shiftAnd(BB)B
    move-result v2
    .line 2906
    .local v2, "temp":B
    aget-byte v3, p1, v1
    aget-byte v4, p1, v0
    invoke-static {v3, v4}, Lcom/shareit/messenger/socket/MessageExchanger;->shiftAnd(BB)B
    move-result v3
    aput-byte v3, p1, v1
    .line 2907
    aput-byte v2, p1, v0
    .line 2908
    add-int/lit8 v1, v1, -0x1
    .line 2904
    .end local v2    # "temp":B
    add-int/lit8 v0, v0, 0x1
    goto :goto_0
    .line 2910
    .end local v0    # "j":I
    :cond_0
    return-object p1
.end method
.method private sendCommand()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 3712
    sget v0, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    const/4 v1, 0x1
    add-int/2addr v0, v1
    sput v0, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    .line 3713
    sget v0, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    sget v2, Lcom/shareit/messenger/util/Util;->MAX_CMD_AT_ONE_CHANNEL:I
    if-gt v0, v2, :cond_0
    sget v0, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    sget v2, Lcom/shareit/messenger/util/Util;->MAX_MSGS_AT_ONE_CHANNEL:I
    if-gt v0, v2, :cond_0
    .line 3714
    const-string v0, "COMMAND_SEND"
    const-string v1, "sending from THREAD withOUT changing channel "
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3715
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/shareit/messenger/util/Util;->sendCarrier(Landroid/content/Context;)[B
    move-result-object v0
    invoke-virtual {p0, v0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    goto :goto_1
    .line 3717
    :cond_0
    const-string v0, "COMMAND_SEND"
    const-string v2, "sending from THREAD with changing channel "
    invoke-static {v0, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3719
    sget v0, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    sget v2, Lcom/shareit/messenger/util/Util;->MAX_CMD_AT_ONE_CHANNEL:I
    if-le v0, v2, :cond_2
    .line 3720
    sget-object v0, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v2, "auto_change_antenna_power"
    invoke-static {v0, v2}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
    .line 3721
    .local v0, "autoChange":I
    if-ne v0, v1, :cond_2
    .line 3722
    const/4 v1, 0x0
    sput-boolean v1, Lcom/shareit/messenger/util/Util;->shouldChangePower_OnRSSI:Z
    .line 3723
    sget-byte v1, Lcom/shareit/messenger/util/Util;->previousPower:B
    const/16 v2, 0x6b
    if-ne v1, v2, :cond_1
    .line 3724
    const/16 v1, 0x6a
    sget-byte v2, Lcom/shareit/messenger/util/Util;->previousPower:B
    invoke-direct {p0, v1, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->setPower(II)V
    goto :goto_0
    .line 3726
    :cond_1
    sget-byte v1, Lcom/shareit/messenger/util/Util;->previousPower:B
    invoke-direct {p0, v2, v1}, Lcom/shareit/messenger/socket/MessageExchanger;->setPower(II)V
    .line 3731
    .end local v0    # "autoChange":I
    :cond_2
    :goto_0
    invoke-static {}, Lcom/shareit/messenger/util/Util;->getNewChannel()B
    move-result v0
    sput-byte v0, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 3732
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setFrequencyMain()V
    .line 3733
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/shareit/messenger/util/Util;->sendCarrier(Landroid/content/Context;)[B
    move-result-object v0
    invoke-virtual {p0, v0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 3736
    :goto_1
    return-void
.end method
.method private sendDummyMessage(III[B)V
    .locals 17
    .param p1, "contactId"    # I
    .param p2, "index"    # I
    .param p3, "msgid"    # I
    .param p4, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 790
    move-object/from16 v0, p4
    sget v1, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v1
    .line 791
    .local v1, "mobId":[B
    const/16 v2, 0x16
    .line 792
    .local v2, "comId":B
    invoke-static/range {p1 .. p1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    .line 793
    .local v3, "conId":[B
    invoke-static/range {p3 .. p3}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v4
    .line 794
    .local v4, "msgId":[B
    const/4 v5, 0x0
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v6
    .line 795
    .local v6, "bytes":[B
    invoke-static/range {p2 .. p2}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v7
    .line 796
    .local v7, "arrayIndex":[B
    const/16 v8, 0xf
    const/4 v9, 0x2
    const/4 v10, 0x3
    const/4 v11, 0x5
    const/16 v12, 0x9
    const/16 v13, 0xa
    array-length v15, v0
    int-to-byte v15, v15
    .line 797
    .local v15, "msgLen":B
    array-length v14, v0
    add-int/2addr v14, v8
    new-array v14, v14, [B
    .line 798
    .local v14, "finalMsg":[B
    array-length v8, v1
    invoke-static {v1, v5, v14, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 799
    aput-byte v2, v14, v9
    .line 800
    array-length v8, v3
    invoke-static {v3, v5, v14, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 801
    array-length v8, v4
    invoke-static {v4, v5, v14, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 802
    array-length v8, v6
    invoke-static {v6, v5, v14, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 803
    array-length v8, v7
    invoke-static {v7, v5, v14, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 804
    const/16 v8, 0xe
    aput-byte v15, v14, v8
    .line 806
    array-length v8, v0
    const/16 v9, 0xf
    invoke-static {v0, v5, v14, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 807
    move-object/from16 v5, p0
    invoke-virtual {v5, v14}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 808
    return-void
.end method
.method private sendGPSMessage(III[B)V
    .locals 17
    .param p1, "contactId"    # I
    .param p2, "index"    # I
    .param p3, "msgid"    # I
    .param p4, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    move-object/from16 v0, p0
    .line 812
    move-object/from16 v1, p4
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    .line 813
    .local v2, "mobId":[B
    const/16 v3, 0x16
    .line 814
    .local v3, "comId":B
    invoke-static/range {p1 .. p1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v4
    .line 815
    .local v4, "conId":[B
    invoke-static/range {p3 .. p3}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v5
    .line 817
    .local v5, "msgId":[B
    invoke-static/range {p2 .. p2}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v6
    .line 818
    .local v6, "arrayIndex":[B
    const/16 v7, 0xf
    const/4 v8, 0x0
    const/4 v9, 0x2
    const/4 v10, 0x3
    const/4 v11, 0x5
    const/16 v12, 0x9
    const/4 v13, -0x1
    array-length v15, v1
    int-to-byte v15, v15
    .line 820
    .local v15, "msgLen":B
    array-length v14, v1
    add-int/2addr v14, v7
    add-int/lit8 v14, v14, 0x4
    new-array v14, v14, [B
    .line 821
    .local v14, "finalMsg":[B
    array-length v7, v2
    invoke-static {v2, v8, v14, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 822
    aput-byte v3, v14, v9
    .line 823
    array-length v7, v4
    invoke-static {v4, v8, v14, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 824
    array-length v7, v5
    invoke-static {v5, v8, v14, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 825
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v7, v13}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v7
    int-to-byte v7, v7
    aput-byte v7, v14, v12
    .line 827
    array-length v7, v6
    const/16 v9, 0xa
    invoke-static {v6, v8, v14, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 828
    const/16 v7, 0xe
    aput-byte v15, v14, v7
    .line 830
    array-length v7, v1
    const/16 v9, 0xf
    invoke-static {v1, v8, v14, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 831
    iget-object v7, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v7
    .line 832
    .local v7, "handy":[B
    array-length v10, v1
    add-int/2addr v10, v9
    array-length v11, v7
    invoke-static {v7, v8, v14, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 834
    array-length v8, v1
    add-int/2addr v8, v9
    array-length v10, v7
    add-int/2addr v8, v10
    sget-byte v10, Lcom/shareit/messenger/util/Util;->RssiSent:B
    aput-byte v10, v14, v8
    .line 835
    array-length v8, v1
    add-int/2addr v8, v9
    array-length v9, v7
    add-int/2addr v8, v9
    add-int/lit8 v8, v8, 0x1
    sget-byte v9, Lcom/shareit/messenger/util/Util;->BattVsent:B
    aput-byte v9, v14, v8
    .line 836
    invoke-virtual {v0, v14}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 837
    return-void
.end method
.method private sendMessage(III[BI)I
    .locals 18
    .param p1, "contactId"    # I
    .param p2, "index"    # I
    .param p3, "msgid"    # I
    .param p4, "msg"    # [B
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    move-object/from16 v0, p0
    move-object/from16 v1, p4
    .line 678
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    .line 679
    .local v2, "mobId":[B
    const/16 v3, 0x16
    .line 680
    .local v3, "comId":B
    invoke-static/range {p1 .. p1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v4
    .line 681
    .local v4, "conId":[B
    invoke-static/range {p3 .. p3}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v5
    .line 682
    .local v5, "msgId":[B
    invoke-static/range {p2 .. p2}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v6
    .line 683
    .local v6, "arrayIndex":[B
    const-string v7, "SendMessageTag"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "in sendmessage array index: "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v9, 0x0
    aget-byte v10, v6, v9
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v10, " "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x1
    aget-byte v11, v6, v10
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, " "
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v11, 0x2
    aget-byte v12, v6, v11
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v12, " "
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v12, 0x3
    aget-byte v13, v6, v12
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 684
    const/4 v7, 0x4
    const/16 v8, 0xf
    array-length v13, v1
    int-to-byte v13, v13
    .line 685
    .local v13, "msgLen":B
    array-length v14, v1
    add-int/2addr v14, v8
    add-int/2addr v14, v7
    new-array v14, v14, [B
    .line 686
    .local v14, "finalMsg":[B
    sput v10, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    .line 687
    const-string v15, "SendMessageTag"
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "in sendmessage:"
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v8, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v15, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 688
    :goto_0
    sget v8, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    const/4 v10, 0x5
    if-ge v8, v7, :cond_5
    .line 689
    array-length v8, v2
    invoke-static {v2, v9, v14, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 690
    aput-byte v3, v14, v11
    .line 691
    array-length v8, v4
    invoke-static {v4, v9, v14, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 692
    array-length v8, v5
    invoke-static {v5, v9, v14, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 693
    const/16 v8, 0x9
    sget-object v15, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const/4 v7, -0x1
    invoke-static {v15, v7}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v7
    int-to-byte v7, v7
    aput-byte v7, v14, v8
    .line 694
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    move/from16 v8, p3
    int-to-long v10, v8
    invoke-static {v7, v10, v11}, Lcom/shareit/messenger/db/Message;->get(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/shareit/messenger/db/Message;
    move-result-object v7
    .line 716
    .local v7, "message":Lcom/shareit/messenger/db/Message;
    const/16 v10, 0xa
    array-length v11, v6
    invoke-static {v6, v9, v14, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 717
    const/16 v10, 0xe
    aput-byte v13, v14, v10
    .line 719
    array-length v10, v1
    const/16 v11, 0xf
    invoke-static {v1, v9, v14, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 721
    iget-object v10, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v10}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v10
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v10
    invoke-static {v10}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v10
    .line 723
    .local v10, "handy":[B
    array-length v15, v1
    add-int/2addr v15, v11
    array-length v12, v10
    invoke-static {v10, v9, v14, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 725
    array-length v12, v1
    add-int/2addr v12, v11
    array-length v15, v10
    add-int/2addr v12, v15
    sget-byte v15, Lcom/shareit/messenger/util/Util;->RssiSent:B
    aput-byte v15, v14, v12
    .line 726
    array-length v12, v1
    add-int/2addr v12, v11
    array-length v15, v10
    add-int/2addr v12, v15
    const/4 v15, 0x1
    add-int/2addr v12, v15
    sget-byte v15, Lcom/shareit/messenger/util/Util;->BattVsent:B
    aput-byte v15, v14, v12
    .line 727
    array-length v12, v14
    const/16 v15, 0xff
    if-le v12, v15, :cond_0
    .line 728
    const/4 v9, 0x7
    return v9
    .line 730
    :cond_0
    const-string v12, "SendMessageTag"
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "in sendmessage before send data:"
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v11, Lcom/shareit/messenger/socket/MessageExchanger;->deliverytries:I
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static {v12, v11}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 731
    const-string v11, "SendMessageTag222"
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    array-length v15, v10
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v15, "in sendmessage before send data:"
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v15, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v15}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v15
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v15
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v12
    invoke-static {v11, v12}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 733
    sget v11, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    const/4 v12, 0x1
    add-int/2addr v11, v12
    sput v11, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    .line 734
    sget v11, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    sget v12, Lcom/shareit/messenger/util/Util;->MAX_MSGS_AT_ONE_CHANNEL:I
    if-le v11, v12, :cond_2
    if-nez p5, :cond_1
    goto :goto_1
    .line 749
    :cond_1
    const-string v12, "COMMAND_SEND"
    const-string v15, "sending from THREAD 4 "
    invoke-static {v12, v15}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendCommand()V
    .line 750
    .end local v7    # "message":Lcom/shareit/messenger/db/Message;
    .end local v10    # "handy":[B
    goto :goto_3
    .line 735
    .restart local v7    # "message":Lcom/shareit/messenger/db/Message;
    .restart local v10    # "handy":[B
    :cond_2
    :goto_1
    const-string v12, "SendMessageTag"
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "in sendmessage send data Length: "
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v9, v14
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v12, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 736
    invoke-virtual {v0, v14}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 737
    new-instance v9, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    invoke-direct {v9, v0}, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    .line 738
    const/4 v9, 0x0
    iput-boolean v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->isMessageSentTimedOut:Z
    .line 739
    iget-object v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    invoke-virtual {v9}, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;->startThread()V
    .line 740
    const-string v9, "SendMessageTag"
    const-string v12, "in while thread"
    invoke-static {v9, v12}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 741
    :goto_2
    iget-boolean v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->checkdeliveryreport:Z
    const/4 v12, 0x1
    if-eq v9, v12, :cond_3
    iget-boolean v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->isMessageSentTimedOut:Z
    if-eq v9, v12, :cond_3
    goto :goto_2
    .line 742
    :cond_3
    const-string v9, "SendMessageTag"
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "After while check checkdeliveryreport "
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v15, v0, Lcom/shareit/messenger/socket/MessageExchanger;->checkdeliveryreport:Z
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v15, " isMessageSentTimedOut "
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v15, v0, Lcom/shareit/messenger/socket/MessageExchanger;->isMessageSentTimedOut:Z
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v12
    invoke-static {v9, v12}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 743
    iget-object v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    invoke-virtual {v9}, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;->stopThread()V
    .line 744
    iget-boolean v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->checkdeliveryreport:Z
    const/4 v12, 0x1
    if-ne v9, v12, :cond_4
    .line 745
    const/4 v9, 0x0
    iput-boolean v9, v0, Lcom/shareit/messenger/socket/MessageExchanger;->checkdeliveryreport:Z
    .line 746
    goto :goto_4
    .line 753
    .end local v7    # "message":Lcom/shareit/messenger/db/Message;
    .end local v10    # "handy":[B
    :cond_4
    :goto_3
    nop
    .line 688
    const/4 v7, 0x4
    const/4 v9, 0x0
    const/4 v11, 0x2
    const/4 v12, 0x3
    goto/16 :goto_0
    .line 754
    :cond_5
    move/from16 v8, p3
    :goto_4
    const-string v7, "edu.google.intent.MESSAGE_SENDING_FAILED"
    .line 755
    .local v7, "actionMessage":Ljava/lang/String;
    const-string v9, "Message Failed"
    .line 756
    .local v9, "extraMessage":Ljava/lang/String;
    const/4 v10, 0x1
    .line 758
    .local v10, "resultCode":I
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    if-eqz v12, :cond_7
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    array-length v12, v12
    const/4 v15, 0x2
    if-le v12, v15, :cond_7
    .line 759
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    aget-byte v12, v12, v15
    const/16 v15, 0x3d
    if-ne v12, v15, :cond_7
    .line 760
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    const/4 v15, 0x5
    aget-byte v12, v12, v15
    const/4 v15, 0x1
    if-eq v12, v15, :cond_6
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    const/4 v15, 0x5
    aget-byte v12, v12, v15
    const/16 v15, 0x63
    if-ne v12, v15, :cond_7
    .line 761
    :cond_6
    const-string v12, "delivery report"
    const-string v15, "Message Sent"
    invoke-static {v12, v15}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 762
    const-string v7, "edu.google.intent.MESSAGE_DELIVERED"
    .line 763
    const-string v9, "Message Sent"
    .line 764
    const/4 v10, 0x2
    .line 765
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    const/4 v15, 0x0
    const/16 v16, 0x5
    aput-byte v15, v12, v16
    goto :goto_5
    .line 770
    :cond_7
    const/4 v15, 0x0
    :goto_5
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->deliveryreport:[B
    const/16 v16, 0x2
    aput-byte v15, v12, v16
    .line 771
    iget-object v12, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v12, v7, v9}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 772
    return v10
.end method
.method private sendMessages()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 607
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    .line 608
    sget-object v1, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const/4 v2, -0x1
    invoke-static {v1, v2}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v1
    .line 609
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shareit/messenger/db/Message;>;"
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Total message: "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 610
    sput v2, Lcom/shareit/messenger/util/Util;->CONTACT_ID:I
    .line 611
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0x0
    if-lez v3, :cond_8
    .line 612
    move v3, v4
    .line 612
    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v3, v5, :cond_9
    .line 614
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    move-object v11, v5
    check-cast v11, Lcom/shareit/messenger/db/Message;
    .line 616
    .local v11, "m":Lcom/shareit/messenger/db/Message;
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-virtual {v11}, Lcom/shareit/messenger/db/Message;->getReceiverConId()I
    move-result v6
    invoke-static {v5, v6}, Lcom/shareit/messenger/db/Contact;->get(Lnet/sqlcipher/database/SQLiteDatabase;I)Lcom/shareit/messenger/db/Contact;
    move-result-object v12
    .line 617
    .local v12, "c":Lcom/shareit/messenger/db/Contact;
    if-eqz v12, :cond_3
    .line 618
    invoke-virtual {v12}, Lcom/shareit/messenger/db/Contact;->getContactId()Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
    sget v6, Lcom/shareit/messenger/util/Util;->CONTACT_ID:I
    if-eq v5, v6, :cond_4
    .line 619
    invoke-virtual {v11}, Lcom/shareit/messenger/db/Message;->getMessage()Ljava/lang/String;
    move-result-object v13
    .line 620
    .local v13, "decryptMessagebody":Ljava/lang/String;
    invoke-static {}, Lcom/shareit/messenger/crypto/OurEncrypt;->random()I
    move-result v5
    sput v5, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    .line 621
    iget-object v5, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    sget v6, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    invoke-static {v5, v13, v6}, Lcom/shareit/messenger/crypto/OurEncrypt;->encrypt(Landroid/content/Context;Ljava/lang/String;I)[B
    move-result-object v14
    .line 622
    .local v14, "encryptMessagebody":[B
    invoke-virtual {v12}, Lcom/shareit/messenger/db/Contact;->getContactId()Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    sget v7, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    invoke-virtual {v11}, Lcom/shareit/messenger/db/Message;->get_id()J
    move-result-wide v8
    long-to-int v8, v8
    move-object v5, p0
    move-object v9, v14
    move v10, v3
    invoke-direct/range {v5 .. v10}, Lcom/shareit/messenger/socket/MessageExchanger;->sendMessage(III[BI)I
    move-result v5
    .line 623
    .local v5, "result":I
    sget-object v6, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-virtual {v11}, Lcom/shareit/messenger/db/Message;->get_id()J
    move-result-wide v7
    invoke-static {v6, v7, v8}, Lcom/shareit/messenger/db/Message;->get(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/shareit/messenger/db/Message;
    move-result-object v6
    .line 624
    .local v6, "messageTemp":Lcom/shareit/messenger/db/Message;
    invoke-virtual {v6}, Lcom/shareit/messenger/db/Message;->getStatus()I
    .line 628
    const/4 v7, 0x2
    if-eq v5, v7, :cond_1
    .line 629
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->flag:Z
    if-nez v0, :cond_0
    .line 630
    const-string v0, "SendMessageTag"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "in sendmessage function : flag to start thread "
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v7, p0, Lcom/shareit/messenger/socket/MessageExchanger;->flag:Z
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 631
    new-instance v0, Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;
    invoke-direct {v0, p0}, Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimer:Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;
    .line 632
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimer:Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;
    invoke-virtual {v0}, Lcom/shareit/messenger/socket/MessageExchanger$MsgTimer;->startThread()V
    .line 634
    :cond_0
    sget-boolean v0, Lcom/shareit/messenger/util/Util;->shouldSendCommandDR:Z
    if-eqz v0, :cond_9
    sget-boolean v0, Lcom/shareit/messenger/util/Util;->shouldSendCommand:Z
    if-eqz v0, :cond_9
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->stopSendingMessages:Z
    if-nez v0, :cond_9
    .line 635
    const-string v0, "COMMAND_SEND"
    const-string v2, "sending from THREAD 3 "
    invoke-static {v0, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 636
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendCommand()V
    goto/16 :goto_3
    .line 640
    :cond_1
    iget-boolean v7, p0, Lcom/shareit/messenger/socket/MessageExchanger;->flag:Z
    if-eqz v7, :cond_2
    .line 641
    const-string v7, "delivery report"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "in sendmessage function : flag  in stop thread "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v9, p0, Lcom/shareit/messenger/socket/MessageExchanger;->flag:Z
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 642
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->msgTimerStart:Z
    .line 643
    const-string v7, "MessageTimer"
    const-string v8, "Timer stopped"
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 645
    .end local v5    # "result":I
    .end local v6    # "messageTemp":Lcom/shareit/messenger/db/Message;
    .end local v13    # "decryptMessagebody":Ljava/lang/String;
    .end local v14    # "encryptMessagebody":[B
    :cond_2
    goto :goto_1
    .line 648
    :cond_3
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-virtual {v11}, Lcom/shareit/messenger/db/Message;->get_id()J
    move-result-wide v6
    invoke-static {v5, v6, v7, v0}, Lcom/shareit/messenger/db/Message;->delete(Lnet/sqlcipher/database/SQLiteDatabase;JI)V
    .line 651
    :cond_4
    :goto_1
    iget-boolean v5, p0, Lcom/shareit/messenger/socket/MessageExchanger;->stopSendingMessages:Z
    if-nez v5, :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v5
    sub-int/2addr v5, v0
    if-ne v3, v5, :cond_6
    .line 652
    sget-object v5, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v5, v2}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v5
    .line 653
    .local v5, "messages2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shareit/messenger/db/Message;>;"
    const-string v6, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "Total message: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 654
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v6
    if-lez v6, :cond_5
    .line 655
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendMessages()V
    .line 657
    .end local v5    # "messages2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shareit/messenger/db/Message;>;"
    :cond_5
    goto :goto_2
    :cond_6
    iget-boolean v5, p0, Lcom/shareit/messenger/socket/MessageExchanger;->stopSendingMessages:Z
    if-eqz v5, :cond_7
    .line 658
    const-string v0, "COMMAND_SEND"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "stoping sending messages from DR "
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v5, Lcom/shareit/messenger/util/Util;->shouldSendCommandDR:Z
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 660
    sput-boolean v4, Lcom/shareit/messenger/socket/MessageExchanger;->readyReply:Z
    .line 661
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    .line 662
    goto :goto_3
    .line 612
    .end local v11    # "m":Lcom/shareit/messenger/db/Message;
    .end local v12    # "c":Lcom/shareit/messenger/db/Contact;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1
    goto/16 :goto_0
    .line 666
    .end local v3    # "i":I
    :cond_8
    const-string v0, "SendMessageTag"
    const-string v2, "Sending Dummy Message"
    invoke-static {v0, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 667
    const-string v0, "*#dummy#*"
    .line 668
    .local v0, "dummy":Ljava/lang/String;
    invoke-static {}, Lcom/shareit/messenger/crypto/OurEncrypt;->random()I
    move-result v2
    sput v2, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    .line 669
    iget-object v2, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    sget v3, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    invoke-static {v2, v0, v3}, Lcom/shareit/messenger/crypto/OurEncrypt;->encrypt(Landroid/content/Context;Ljava/lang/String;I)[B
    move-result-object v2
    .line 670
    .local v2, "dummyMessage":[B
    const/16 v3, 0x64
    sget v5, Lcom/shareit/messenger/socket/MessageExchanger;->indexNumber:I
    invoke-direct {p0, v3, v5, v4, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->sendDummyMessage(III[B)V
    .line 672
    .end local v0    # "dummy":Ljava/lang/String;
    .end local v2    # "dummyMessage":[B
    :cond_9
    :goto_3
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    .line 673
    return-void
.end method
.method private sendScanFrequencies()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 496
    const-string v0, "Message Exchanger"
    const-string v1, "Setting Scan Frequencies"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 497
    const/16 v0, 0x2b
    new-array v0, v0, [B
    .line 498
    .local v0, "send":[B
    sget v1, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v1
    const/4 v2, 0x2
    const/4 v3, 0x0
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 499
    const/16 v1, 0x9
    aput-byte v1, v0, v2
    .line 500
    const/4 v1, 0x3
    .line 501
    .local v1, "j":I
    sget-object v2, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v4, "scan_frequencies"
    invoke-static {v2, v4}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    .line 502
    .local v2, "value":Ljava/lang/String;
    const-string v4, ","
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    .line 503
    .local v4, "values":[Ljava/lang/String;
    invoke-static {v4}, Lcom/shareit/messenger/util/Util;->getTXScanFreqForChannel([Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    .line 504
    const/16 v5, 0xa
    new-array v5, v5, [D
    .line 505
    .local v5, "scanfrqArray":[D
    move v6, v1
    move v1, v3
    .line 505
    .local v1, "i":I
    .local v6, "j":I
    :goto_0
    const/16 v7, 0x8
    if-ge v1, v7, :cond_0
    .line 506
    const-string v7, "Message Exchanger"
    const-string v8, "Set not caliberated"
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 507
    aget-object v7, v4, v1
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v7
    aput-wide v7, v5, v1
    .line 511
    aget-wide v7, v5, v1
    const-wide v9, 0x408f400000000000L    # 1000.0
    mul-double/2addr v7, v9
    double-to-int v7, v7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v7
    .line 512
    .local v7, "frequency":[B
    const-string v8, "Message Exchanger"
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    array-length v10, v7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v10, " ScanFreq "
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v10, ": "
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-wide v10, v5, v1
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v8, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 513
    invoke-static {v7}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 514
    array-length v8, v7
    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 515
    add-int/lit8 v6, v6, 0x4
    .line 505
    .end local v7    # "frequency":[B
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    .line 517
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 518
    return-void
.end method
.method private sendScanReport(III[B)V
    .locals 17
    .param p1, "contactId"    # I
    .param p2, "index"    # I
    .param p3, "msgid"    # I
    .param p4, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    move-object/from16 v0, p0
    .line 841
    move-object/from16 v1, p4
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    .line 842
    .local v2, "mobId":[B
    const/16 v3, 0x16
    .line 843
    .local v3, "comId":B
    invoke-static/range {p1 .. p1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v4
    .line 844
    .local v4, "conId":[B
    invoke-static/range {p3 .. p3}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v5
    .line 846
    .local v5, "msgId":[B
    invoke-static/range {p2 .. p2}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v6
    .line 847
    .local v6, "arrayIndex":[B
    const/16 v7, 0xf
    const/4 v8, 0x0
    const/4 v9, 0x2
    const/4 v10, 0x3
    const/4 v11, 0x5
    const/16 v12, 0x9
    const/4 v13, -0x1
    array-length v15, v1
    int-to-byte v15, v15
    .line 850
    .local v15, "msgLen":B
    array-length v14, v1
    add-int/2addr v14, v7
    add-int/lit8 v14, v14, 0x4
    new-array v14, v14, [B
    .line 851
    .local v14, "finalMsg":[B
    array-length v7, v2
    invoke-static {v2, v8, v14, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 852
    aput-byte v3, v14, v9
    .line 853
    array-length v7, v4
    invoke-static {v4, v8, v14, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 854
    array-length v7, v5
    invoke-static {v5, v8, v14, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 855
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v7, v13}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v7
    int-to-byte v7, v7
    aput-byte v7, v14, v12
    .line 857
    array-length v7, v6
    const/16 v9, 0xa
    invoke-static {v6, v8, v14, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 858
    const/16 v7, 0xe
    aput-byte v15, v14, v7
    .line 860
    array-length v7, v1
    const/16 v9, 0xf
    invoke-static {v1, v8, v14, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 861
    iget-object v7, v0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getwifiId(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v7
    .line 862
    .local v7, "handy":[B
    array-length v10, v1
    add-int/2addr v10, v9
    array-length v11, v7
    invoke-static {v7, v8, v14, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 864
    array-length v8, v1
    add-int/2addr v8, v9
    array-length v10, v7
    add-int/2addr v8, v10
    sget-byte v10, Lcom/shareit/messenger/util/Util;->RssiSent:B
    aput-byte v10, v14, v8
    .line 865
    array-length v8, v1
    add-int/2addr v8, v9
    array-length v9, v7
    add-int/2addr v8, v9
    add-int/lit8 v8, v8, 0x1
    sget-byte v9, Lcom/shareit/messenger/util/Util;->BattVsent:B
    aput-byte v9, v14, v8
    .line 866
    invoke-virtual {v0, v14}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 867
    return-void
.end method
.method private setBandWidth()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 450
    const-string v0, "Message Exchanger"
    const-string v1, "Setting Bandwidth"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 451
    sget-object v0, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v1, "bandwidth"
    invoke-static {v0, v1}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    .line 452
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    .line 453
    .local v1, "loraBW":I
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
    int-to-byte v2, v2
    .line 454
    .local v2, "bandwidth":B
    const/4 v3, 0x4
    new-array v4, v3, [B
    .line 455
    .local v4, "send":[B
    sget v5, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v5}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v5
    const/4 v6, 0x2
    const/4 v7, 0x0
    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 456
    const/16 v5, 0x11
    aput-byte v5, v4, v6
    .line 458
    const/4 v5, 0x3
    const/4 v8, 0x7
    if-ne v1, v8, :cond_0
    .line 459
    aput-byte v7, v4, v5
    goto :goto_0
    .line 460
    :cond_0
    const/16 v7, 0xa
    if-ne v1, v7, :cond_1
    .line 461
    const/16 v3, 0x8
    aput-byte v3, v4, v5
    goto :goto_0
    .line 462
    :cond_1
    const/16 v8, 0xf
    if-ne v1, v8, :cond_2
    .line 463
    const/4 v3, 0x1
    aput-byte v3, v4, v5
    goto :goto_0
    .line 464
    :cond_2
    const/16 v8, 0x14
    if-ne v1, v8, :cond_3
    .line 465
    const/16 v3, 0x9
    aput-byte v3, v4, v5
    goto :goto_0
    .line 466
    :cond_3
    const/16 v8, 0x1f
    if-ne v1, v8, :cond_4
    .line 467
    aput-byte v6, v4, v5
    goto :goto_0
    .line 468
    :cond_4
    const/16 v6, 0x29
    if-ne v1, v6, :cond_5
    .line 469
    aput-byte v7, v4, v5
    goto :goto_0
    .line 470
    :cond_5
    const/16 v6, 0x3e
    if-ne v1, v6, :cond_6
    .line 471
    aput-byte v5, v4, v5
    goto :goto_0
    .line 472
    :cond_6
    const/16 v6, 0x7d
    if-ne v1, v6, :cond_7
    .line 473
    aput-byte v3, v4, v5
    goto :goto_0
    .line 474
    :cond_7
    const/16 v3, 0xfa
    if-ne v1, v3, :cond_8
    .line 475
    const/4 v3, 0x5
    aput-byte v3, v4, v5
    goto :goto_0
    .line 476
    :cond_8
    const/16 v3, 0x1f4
    if-ne v1, v3, :cond_9
    .line 477
    const/4 v3, 0x6
    aput-byte v3, v4, v5
    .line 480
    :cond_9
    :goto_0
    invoke-virtual {p0, v4}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 482
    return-void
.end method
.method private setCodeRate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 485
    const-string v0, "Message Exchanger"
    const-string v1, "Setting Code Rate"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 486
    sget-object v0, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v1, "code_rate"
    invoke-static {v0, v1}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    .line 487
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    int-to-byte v1, v1
    .line 488
    .local v1, "codeRate":B
    const/4 v2, 0x4
    new-array v2, v2, [B
    .line 489
    .local v2, "send":[B
    sget v3, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    const/4 v4, 0x2
    const/4 v5, 0x0
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 490
    const/16 v3, 0x10
    aput-byte v3, v2, v4
    .line 491
    const/4 v3, 0x3
    aput-byte v1, v2, v3
    .line 492
    invoke-virtual {p0, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 493
    return-void
.end method
.method private setFrequency(DDDD)V
    .locals 5
    .param p1, "freq1"    # D
    .param p3, "freq2"    # D
    .param p5, "freq3"    # D
    .param p7, "freq4"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 521
    const-string v0, "Message Exchanger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "  freqtx  "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 522
    const-string v0, "Message Exchanger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "  freqrx1  "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 523
    const-string v0, "Message Exchanger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "  freqrx2  "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 524
    const-string v0, "Message Exchanger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "  freqrx3  "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 525
    invoke-static/range {p1 .. p8}, Lcom/shareit/messenger/util/Util;->convertFrequency(DDDD)[B
    move-result-object v0
    .line 526
    .local v0, "frequency":[B
    const/16 v1, 0x13
    new-array v1, v1, [B
    .line 527
    .local v1, "send":[B
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    const/4 v3, 0x2
    const/4 v4, 0x0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 528
    const/4 v2, 0x4
    aput-byte v2, v1, v3
    .line 529
    const/4 v2, 0x3
    array-length v3, v0
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 530
    const-string v2, "FrqTimer"
    const-string v3, " printing frequency bytes"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 531
    invoke-static {v0}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 532
    invoke-virtual {p0, v1}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 533
    const-string v2, "FrqTimer"
    const-string v3, " frequency sent"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 534
    return-void
.end method
.method private setFrequencyMain()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 373
    move-object/from16 v0, p0
    const/4 v1, 0x0
    sput v1, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    .line 374
    sput v1, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    .line 375
    const/4 v2, 0x1
    sput-boolean v2, Lcom/shareit/messenger/socket/MessageExchanger;->settingFrequency:Z
    .line 376
    const-wide/16 v3, 0x0
    .line 377
    .local v3, "freqtx":D
    const-wide/16 v5, 0x0
    .line 378
    .local v5, "freqrx":D
    sget-boolean v7, Lcom/shareit/messenger/util/Util;->setChannelPrev:Z
    if-eqz v7, :cond_0
    .line 379
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v8, "frequency"
    sget-object v9, Lcom/shareit/messenger/util/Util;->prevChannel:Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lcom/shareit/messenger/db/Metadata;->setValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .line 380
    sput-boolean v1, Lcom/shareit/messenger/util/Util;->setChannelPrev:Z
    .line 381
    const-string v7, "FrqTimer"
    const-string v8, "setting previous frequency"
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 384
    :cond_0
    const-string v7, "CHANNEL_NUM from array"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "setting previous frequency"
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v9, Lcom/shareit/messenger/util/Util;->channelarray:[I
    sget-byte v10, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    and-int/lit16 v10, v10, 0xff
    aget v9, v9, v10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 387
    sget-object v7, Lcom/shareit/messenger/util/Util;->channelarray:[I
    sget-byte v8, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    and-int/lit16 v8, v8, 0xff
    aget v7, v7, v8
    int-to-byte v7, v7
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getTXFreqForChannel(B)D
    move-result-wide v3
    .line 388
    sget-byte v7, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    invoke-static {v7}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannel(B)D
    move-result-wide v5
    .line 390
    sget-object v7, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v8, "frequency"
    invoke-static {v7, v8}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    .line 391
    .local v7, "value":Ljava/lang/String;
    const-string v8, ","
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v8
    .line 392
    .local v8, "values":[Ljava/lang/String;
    aget-object v9, v8, v1
    invoke-static {v9}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v9
    .line 393
    .local v9, "freqrx2":D
    const-wide v11, -0x401ccccccccccccdL    # -0.6
    .line 394
    .local v11, "freqrx3":D
    array-length v13, v8
    if-le v13, v2, :cond_1
    .line 395
    aget-object v13, v8, v2
    invoke-static {v13}, Lcom/shareit/messenger/util/Util;->getRXFreqForChannelMain(Ljava/lang/String;)D
    move-result-wide v11
    .line 398
    :cond_1
    const-string v13, "Message Exchanger"
    const-string v14, "Setting Scan Frequencies"
    invoke-static {v13, v14}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 399
    const/16 v13, 0x13
    new-array v13, v13, [B
    .line 400
    .local v13, "send":[B
    sget v14, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v14}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v14
    const/4 v15, 0x2
    invoke-static {v14, v1, v13, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 401
    const/4 v14, 0x4
    aput-byte v14, v13, v15
    .line 402
    const/16 v16, 0x3
    .line 404
    .local v16, "j":I
    const/16 v1, 0xa
    new-array v1, v1, [D
    .line 405
    .local v1, "mainfrqArray":[D
    move/from16 v17, v16
    const/16 v16, 0x0
    .line 405
    .local v16, "i":I
    .local v17, "j":I
    :goto_0
    move/from16 v18, v16
    .line 405
    .end local v16    # "i":I
    .local v18, "i":I
    move/from16 v15, v18
    if-ge v15, v14, :cond_5
    .line 407
    .end local v18    # "i":I
    .local v15, "i":I
    if-nez v15, :cond_2
    aput-wide v3, v1, v15
    .line 413
    :goto_1
    const/4 v2, 0x2
    goto :goto_2
    .line 408
    :cond_2
    if-ne v15, v2, :cond_3
    aput-wide v5, v1, v15
    goto :goto_1
    .line 409
    :cond_3
    const/4 v2, 0x2
    if-ne v15, v2, :cond_4
    aput-wide v9, v1, v15
    goto :goto_2
    .line 410
    :cond_4
    aput-wide v11, v1, v15
    .line 413
    :goto_2
    aget-wide v18, v1, v15
    const-wide v20, 0x408f400000000000L    # 1000.0
    move-wide/from16 v22, v3
    mul-double v2, v18, v20
    .line 413
    .end local v3    # "freqtx":D
    .local v22, "freqtx":D
    double-to-int v2, v2
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte4(I)[B
    move-result-object v2
    .line 414
    .local v2, "frequency":[B
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    array-length v14, v2
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v14, " MainFreq "
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v14, ": "
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-wide/from16 v24, v5
    aget-wide v5, v1, v15
    .line 414
    .end local v5    # "freqrx":D
    .local v24, "freqrx":D
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 415
    invoke-static {v2}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 416
    array-length v3, v2
    move/from16 v4, v17
    const/4 v5, 0x0
    invoke-static {v2, v5, v13, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 417
    .end local v17    # "j":I
    .local v4, "j":I
    add-int/lit8 v17, v4, 0x4
    .line 405
    .end local v2    # "frequency":[B
    .end local v4    # "j":I
    .restart local v17    # "j":I
    add-int/lit8 v16, v15, 0x1
    .line 405
    .end local v15    # "i":I
    .restart local v16    # "i":I
    move-wide/from16 v3, v22
    move-wide/from16 v5, v24
    const/4 v2, 0x1
    const/4 v14, 0x4
    const/4 v15, 0x2
    goto :goto_0
    .line 419
    .end local v16    # "i":I
    .end local v22    # "freqtx":D
    .end local v24    # "freqrx":D
    .restart local v3    # "freqtx":D
    .restart local v5    # "freqrx":D
    :cond_5
    move-wide/from16 v22, v3
    move-wide/from16 v24, v5
    move/from16 v4, v17
    .line 419
    .end local v3    # "freqtx":D
    .end local v5    # "freqrx":D
    .end local v17    # "j":I
    .restart local v4    # "j":I
    .restart local v22    # "freqtx":D
    .restart local v24    # "freqrx":D
    invoke-virtual {v0, v13}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 421
    sget-boolean v2, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v2, :cond_6
    .line 422
    new-instance v2, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v2, v0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 423
    iget-object v2, v0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v2}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 425
    :cond_6
    return-void
.end method
.method private setPower(II)V
    .locals 5
    .param p1, "power"    # I
    .param p2, "prePower"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 569
    sget-object v0, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v1, "auto_change_antenna_power"
    invoke-static {v0, v1}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
    .line 571
    .local v0, "autoChange":I
    const/4 v1, 0x1
    if-ne v0, v1, :cond_2
    .line 572
    if-eq p1, p2, :cond_1
    .line 574
    sget-boolean v1, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    if-eqz v1, :cond_0
    .line 577
    const-string v1, "Message Exchanger"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Setting Power: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", RSSI: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v3, Lcom/shareit/messenger/util/Util;->RssiSent:B
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 580
    const/4 v1, 0x4
    new-array v1, v1, [B
    .line 581
    .local v1, "send":[B
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    const/4 v3, 0x2
    const/4 v4, 0x0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 582
    const/4 v2, 0x5
    aput-byte v2, v1, v3
    .line 583
    const/4 v2, 0x3
    int-to-byte v3, p1
    aput-byte v3, v1, v2
    .line 584
    const-string v2, "power"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, ""
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 586
    invoke-virtual {p0, v1}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 587
    .end local v1    # "send":[B
    goto :goto_0
    .line 590
    :cond_0
    const-string v1, "Message Exchanger"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Can\'t Set Power for this session: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", RSSI: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v3, Lcom/shareit/messenger/util/Util;->RssiSent:B
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_0
    .line 595
    :cond_1
    const-string v1, "Message Exchanger"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Already Same Power: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", RSSI: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v3, Lcom/shareit/messenger/util/Util;->RssiSent:B
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_0
    .line 598
    :cond_2
    const-string v1, "Message Exchanger"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Not Allowed due to DB: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", RSSI: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-byte v3, Lcom/shareit/messenger/util/Util;->RssiSent:B
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 600
    :goto_0
    return-void
.end method
.method private setPowerDB()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 537
    const-string v0, "Message Exchanger"
    const-string v1, "Setting Power DB"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 538
    const/4 v0, 0x3
    .line 539
    .local v0, "power":B
    sget-object v1, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v2, "antenna_power"
    invoke-static {v1, v2}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    .line 542
    .local v1, "temp":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
    int-to-byte v0, v2
    .line 544
    const/4 v2, 0x4
    new-array v2, v2, [B
    .line 545
    .local v2, "send":[B
    sget v3, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    const/4 v4, 0x2
    const/4 v5, 0x0
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 546
    const/4 v3, 0x5
    aput-byte v3, v2, v4
    .line 547
    const/4 v3, 0x3
    aput-byte v0, v2, v3
    .line 548
    const-string v3, "power"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, ""
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 550
    invoke-virtual {p0, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 551
    return-void
.end method
.method private setScanningFrequency(DD)V
    .locals 5
    .param p1, "freq1"    # D
    .param p3, "freq2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 428
    invoke-static {p1, p2, p3, p4}, Lcom/shareit/messenger/util/Util;->convertFrequency(DD)[B
    move-result-object v0
    .line 429
    .local v0, "frequency":[B
    const/16 v1, 0xb
    new-array v1, v1, [B
    .line 430
    .local v1, "send":[B
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    const/4 v3, 0x2
    const/4 v4, 0x0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 431
    const/16 v2, 0x1a
    aput-byte v2, v1, v3
    .line 432
    const/4 v2, 0x3
    array-length v3, v0
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 433
    invoke-virtual {p0, v1}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 434
    const-string v2, "FrqTimer"
    const-string v3, " frequency sent"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 435
    return-void
.end method
.method private setSpreadingfactor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    .line 438
    const-string v0, "Message Exchanger"
    const-string v1, "Setting Scan Carrier Time"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 439
    sget-object v0, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v1, "spreading_factor"
    invoke-static {v0, v1}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    .line 440
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    int-to-byte v1, v1
    .line 441
    .local v1, "scancarrierTime":B
    const/4 v2, 0x4
    new-array v2, v2, [B
    .line 442
    .local v2, "send":[B
    sget v3, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v3}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v3
    const/4 v4, 0x2
    const/4 v5, 0x0
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 443
    const/16 v3, 0x12
    aput-byte v3, v2, v4
    .line 444
    const/4 v3, 0x3
    aput-byte v1, v2, v3
    .line 445
    invoke-virtual {p0, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 447
    return-void
.end method
.method public static shiftAnd(BB)B
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .line 3116
    and-int/lit16 v0, p0, 0xf0
    int-to-byte p0, v0
    .line 3117
    and-int/lit8 v0, p1, 0xf
    int-to-byte p1, v0
    .line 3118
    or-int v0, p0, p1
    int-to-byte v0, v0
    .line 3119
    .local v0, "c":B
    return v0
.end method
.method private static shufflingBytes([B)V
    .locals 3
    .param p0, "sentArray"    # [B
    .line 3127
    const/4 v0, 0x5
    .line 3127
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa5
    if-ge v0, v1, :cond_0
    .line 3128
    sget-object v1, Lcom/shareit/messenger/util/Config;->randomBytes:[I
    add-int/lit8 v2, v0, -0x5
    aget v1, v1, v2
    aget-byte v1, p0, v1
    aput-byte v1, p0, v0
    .line 3127
    add-int/lit8 v0, v0, 0x1
    goto :goto_0
    .line 3130
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
.method private verifyChecksum([B[B)Z
    .locals 8
    .param p1, "length"    # [B
    .param p2, "buffer"    # [B
    .line 2914
    const/4 v0, 0x0
    const/4 v1, 0x1
    array-length v2, p1
    array-length v3, p2
    sub-int/2addr v3, v1
    add-int/2addr v2, v3
    new-array v2, v2, [B
    .line 2915
    .local v2, "c":[B
    array-length v3, p1
    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2916
    array-length v3, p1
    array-length v4, p2
    sub-int/2addr v4, v1
    invoke-static {p2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2917
    const/4 v3, 0x0
    .line 2918
    .local v3, "checkSum2":B
    array-length v4, v2
    move v5, v3
    move v3, v0
    .line 2918
    .end local v3    # "checkSum2":B
    .local v5, "checkSum2":B
    :goto_0
    if-ge v3, v4, :cond_0
    aget-byte v6, v2, v3
    .line 2919
    .local v6, "b":B
    const/16 v7, 0xff
    and-int/2addr v7, v6
    int-to-byte v7, v7
    add-int/2addr v7, v5
    int-to-byte v5, v7
    .line 2918
    .end local v6    # "b":B
    add-int/lit8 v3, v3, 0x1
    goto :goto_0
    .line 2927
    :cond_0
    sput-boolean v1, Lcom/shareit/messenger/socket/MessageExchanger;->adfchecksum:Z
    .line 2929
    const-string v3, "CheckSum"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "CheckSum  from = "
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v6, p2
    sub-int/2addr v6, v1
    aget-byte v6, p2, v6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2930
    const-string v3, "CheckSum"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "CheckSum  result = "
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2933
    array-length v3, p2
    sub-int/2addr v3, v1
    aget-byte v3, p2, v3
    if-ne v3, v5, :cond_1
    .line 2935
    return v1
    .line 2938
    :cond_1
    return v0
.end method

# virtual methods
.method public decimalToDMS(D)Ljava/lang/String;
    .locals 8
    .param p1, "coord"    # D
    .line 3156
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0
    rem-double v2, p1, v0
    .line 3157
    .local v2, "mod":D
    double-to-int v4, p1
    .line 3162
    .local v4, "intPart":I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v5
    .line 3174
    .local v5, "degrees":Ljava/lang/String;
    const-wide/high16 v6, 0x404e000000000000L    # 60.0
    mul-double p1, v2, v6
    .line 3175
    rem-double v0, p1, v0
    .line 3176
    .end local v2    # "mod":D
    .local v0, "mod":D
    double-to-int v2, p1
    .line 3180
    .end local v4    # "intPart":I
    .local v2, "intPart":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v3
    .line 3185
    .local v3, "minutes":Ljava/lang/String;
    mul-double/2addr v6, v0
    .line 3186
    .end local p1    # "coord":D
    .local v6, "coord":D
    double-to-int p1, v6
    .line 3190
    .end local v2    # "intPart":I
    .local p1, "intPart":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p2
    .line 3198
    .local p2, "seconds":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "\u00b0"
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "\'"
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "\""
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    .line 3200
    .local v2, "output":Ljava/lang/String;
    return-object v2
.end method
.method public getNthDigit(III)I
    .locals 6
    .param p1, "number"    # I
    .param p2, "base"    # I
    .param p3, "n"    # I
    .line 3123
    int-to-double v0, p1
    int-to-double v2, p2
    add-int/lit8 v4, p3, -0x1
    int-to-double v4, v4
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D
    move-result-wide v2
    div-double/2addr v0, v2
    int-to-double v2, p2
    rem-double/2addr v0, v2
    double-to-int v0, v0
    return v0
.end method
.method public isConnected()Z
    .locals 1
    .line 603
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isConnected:Z
    return v0
.end method
.method public isRunning()Z
    .locals 1
    .line 173
    iget-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isRunning:Z
    return v0
.end method
.method public lengthread(I)[B
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
    .line 2942
    const/4 v0, 0x0
    .line 2943
    .local v0, "read":I
    new-array v1, p1, [B
    .line 2944
    .local v1, "buffer":[B
    :goto_0
    if-ge v0, p1, :cond_0
    .line 2945
    add-int/lit8 v2, v0, 0x1
    .line 2945
    .local v2, "read":I
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    move-result v3
    int-to-byte v3, v3
    aput-byte v3, v1, v0
    .line 2943
    .end local v0    # "read":I
    move v0, v2
    goto :goto_0
    .line 2947
    .end local v2    # "read":I
    .restart local v0    # "read":I
    :cond_0
    const/4 v2, 0x0
    .line 2947
    .local v2, "i":I
    :goto_1
    array-length v3, v1
    if-ge v2, v3, :cond_1
    .line 2948
    aget-byte v3, v1, v2
    sget-object v4, Lcom/shareit/messenger/util/Util;->headerarray:[B
    aget-byte v4, v4, v2
    xor-int/2addr v3, v4
    int-to-byte v3, v3
    aput-byte v3, v1, v2
    .line 2947
    add-int/lit8 v2, v2, 0x1
    goto :goto_1
    .line 2950
    .end local v2    # "i":I
    :cond_1
    const-string v2, "Message Exchanger"
    const-string v3, "printing Length"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2951
    invoke-static {v1}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2952
    return-object v1
.end method
.method public read(I)[B
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
    .line 2957
    const/4 v0, 0x0
    .line 2958
    .local v0, "read":I
    new-array v1, p1, [B
    .line 2959
    .local v1, "buffer":[B
    const-string v2, "Message Exchanger"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "printing read bytes length "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2961
    :goto_0
    if-ge v0, p1, :cond_0
    .line 2962
    add-int/lit8 v2, v0, 0x1
    .line 2962
    .local v2, "read":I
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    move-result v3
    int-to-byte v3, v3
    aput-byte v3, v1, v0
    .line 2961
    .end local v0    # "read":I
    move v0, v2
    goto :goto_0
    .line 2965
    .end local v2    # "read":I
    .restart local v0    # "read":I
    :cond_0
    const-string v2, "Message Exchanger"
    const-string v3, "printing read bytes before xor"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2968
    invoke-static {v1}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2969
    const/4 v2, 0x0
    .line 2969
    .local v2, "i":I
    :goto_1
    array-length v3, v1
    if-ge v2, v3, :cond_1
    .line 2970
    aget-byte v3, v1, v2
    sget-object v4, Lcom/shareit/messenger/util/Util;->headerarray:[B
    add-int/lit8 v5, v2, 0x2
    aget-byte v4, v4, v5
    xor-int/2addr v3, v4
    int-to-byte v3, v3
    aput-byte v3, v1, v2
    .line 2969
    add-int/lit8 v2, v2, 0x1
    goto :goto_1
    .line 2972
    .end local v2    # "i":I
    :cond_1
    const-string v2, "Message Exchanger"
    const-string v3, "printing read bytes"
    invoke-static {v2, v3}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2973
    invoke-static {v1}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2974
    return-object v1
.end method
.method public receiveData()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
    .line 2838
    new-instance v0, Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    invoke-direct {v0, p0}, Lcom/shareit/messenger/socket/MessageExchanger$Timer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    .line 2839
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    invoke-virtual {v0}, Lcom/shareit/messenger/socket/MessageExchanger$Timer;->startThread()V
    .line 2840
    const-string v0, "Message Exchanger"
    const-string v1, "Reading Length"
    invoke-static {v0, v1}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2841
    const/4 v0, 0x2
    invoke-virtual {p0, v0}, Lcom/shareit/messenger/socket/MessageExchanger;->lengthread(I)[B
    move-result-object v1
    .line 2842
    .local v1, "length":[B
    invoke-static {v1}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v2
    .line 2843
    .local v2, "toRead":I
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Data to read: "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2844
    const/4 v3, 0x0
    .line 2845
    .local v3, "buffer":[B
    if-lez v2, :cond_0
    const/16 v4, 0xff
    if-ge v2, v4, :cond_0
    .line 2847
    invoke-virtual {p0, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->read(I)[B
    move-result-object v3
    .line 2849
    :cond_0
    if-eqz v3, :cond_5
    .line 2850
    const-string v4, "CheckSumFF"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "buffer[2] "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-byte v6, v3, v0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2852
    aget-byte v4, v3, v0
    const/16 v5, 0x48
    if-eq v4, v5, :cond_2
    aget-byte v0, v3, v0
    const/16 v4, 0x45
    if-ne v0, v4, :cond_1
    goto :goto_0
    .line 2891
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->verifyChecksum([B[B)Z
    move-result v0
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    goto/16 :goto_3
    .line 2853
    :cond_2
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/shareit/messenger/socket/MessageExchanger;->verifyChecksum([B[B)Z
    move-result v0
    sput-boolean v0, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    .line 2857
    const-string v0, "Message Exchanger"
    const-string v4, "1st"
    invoke-static {v0, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2858
    invoke-static {v3}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2859
    array-length v0, v3
    add-int/lit8 v0, v0, -0x13
    new-array v0, v0, [B
    .line 2861
    .local v0, "temp5":[B
    :try_start_0
    array-length v4, v3
    add-int/lit8 v4, v4, -0x13
    const/16 v5, 0x11
    const/4 v6, 0x0
    invoke-static {v3, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .line 2865
    nop
    .line 2866
    const-string v4, "Message Exchanger"
    const-string v7, "2nd"
    invoke-static {v4, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2867
    invoke-static {v0}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2868
    invoke-direct {p0, v0}, Lcom/shareit/messenger/socket/MessageExchanger;->reverseBitShifting([B)[B
    move-result-object v4
    .line 2869
    .local v4, "tempRecv":[B
    const-string v7, "Message Exchanger"
    const-string v8, "3rd"
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2870
    invoke-static {v4}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2872
    move v7, v6
    .line 2872
    .local v7, "i":I
    :goto_1
    array-length v8, v4
    if-ge v7, v8, :cond_3
    .line 2874
    aget-byte v8, v4, v7
    sget-object v9, Lcom/shareit/messenger/util/Config;->randomBytes:[I
    aget v9, v9, v7
    xor-int/2addr v8, v9
    int-to-byte v8, v8
    aput-byte v8, v4, v7
    .line 2872
    add-int/lit8 v7, v7, 0x1
    goto :goto_1
    .line 2876
    .end local v7    # "i":I
    :cond_3
    const-string v7, "Message Exchanger"
    const-string v8, "Printing deshuffled array"
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2879
    array-length v7, v4
    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2880
    const-string v5, "Message Exchanger"
    const-string v6, "4th"
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2881
    invoke-static {v3}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2882
    const-string v5, "Message Exchanger"
    const-string v6, "Printing Receive array after deshuffle "
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2886
    invoke-static {v3}, Lcom/shareit/messenger/crypto/AdvancedCrypto;->generateReverseHashes([B)V
    .line 2887
    const/4 v5, 0x7
    .line 2887
    .local v5, "i":I
    :goto_2
    array-length v6, v3
    add-int/lit8 v6, v6, -0xb
    if-ge v5, v6, :cond_4
    .line 2888
    aget-byte v6, v3, v5
    sget-object v7, Lcom/shareit/messenger/util/Util;->hashArray:[B
    add-int/lit8 v8, v5, 0x2
    aget-byte v7, v7, v8
    xor-int/2addr v6, v7
    int-to-byte v6, v6
    aput-byte v6, v3, v5
    .line 2887
    add-int/lit8 v5, v5, 0x1
    goto :goto_2
    .line 2890
    .end local v0    # "temp5":[B
    .end local v4    # "tempRecv":[B
    .end local v5    # "i":I
    :cond_4
    goto :goto_3
    .line 2862
    .restart local v0    # "temp5":[B
    :catch_0
    move-exception v4
    .line 2863
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    .line 2864
    const/4 v5, 0x0
    return-object v5
    .line 2894
    .end local v0    # "temp5":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    const-string v0, "Message Exchanger"
    const-string v4, "Printing Receive array after hash "
    invoke-static {v0, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2895
    invoke-static {v3}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 2896
    const-string v0, "CheckSum"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "CheckSum  result = "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v5, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v0, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2897
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    invoke-virtual {v0}, Lcom/shareit/messenger/socket/MessageExchanger$Timer;->stopThread()V
    .line 2898
    return-object v3
.end method
.method public run()V
    .locals 10
    .line 180
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isRunning:Z
    .line 181
    const-string v1, "Message Exchanger"
    const-string v2, "Started"
    invoke-static {v1, v2}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 182
    const/4 v1, 0x3
    new-array v1, v1, [B
    .line 183
    .local v1, "send":[B
    sget v2, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v2}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v2
    const/4 v3, 0x2
    const/4 v4, 0x0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 184
    aput-byte v0, v1, v3
    .line 186
    const/4 v2, -0x1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 187
    invoke-virtual {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->receiveData()[B
    move-result-object v5
    .line 188
    .local v5, "recv":[B
    sget-boolean v6, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    if-eqz v6, :cond_d
    sget-boolean v6, Lcom/shareit/messenger/socket/MessageExchanger;->adfchecksum:Z
    if-eqz v6, :cond_d
    .line 189
    sput-boolean v4, Lcom/shareit/messenger/socket/MessageExchanger;->adfchecksum:Z
    .line 190
    sput-boolean v4, Lcom/shareit/messenger/socket/MessageExchanger;->checksum:Z
    .line 191
    if-eqz v5, :cond_d
    .line 192
    new-array v6, v3, [B
    aget-byte v7, v5, v4
    aput-byte v7, v6, v4
    aget-byte v7, v5, v0
    aput-byte v7, v6, v0
    invoke-static {v6}, Lcom/shareit/messenger/util/Util;->convertToInt([B)I
    move-result v6
    .line 193
    .local v6, "mobId":I
    const-string v7, "Message Exchanger"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "mobId"
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v7, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 194
    sget v7, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    if-ne v6, v7, :cond_d
    .line 195
    aget-byte v3, v5, v3
    const/16 v7, 0x33
    if-ne v3, v7, :cond_d
    .line 198
    const/4 v3, 0x5
    sput v3, Lcom/shareit/messenger/socket/MessageExchanger;->pingCount:I
    .line 202
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->start:Z
    if-eqz v3, :cond_c
    .line 206
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-eqz v3, :cond_2
    .line 207
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFreqFrmServer:Z
    if-nez v3, :cond_1
    .line 208
    invoke-static {}, Lcom/shareit/messenger/util/Util;->getNewChannel()B
    move-result v3
    sput-byte v3, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 210
    :cond_1
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 1"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 212
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setFrequencyMain()V
    .line 215
    :cond_2
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-eqz v3, :cond_3
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-nez v3, :cond_3
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_3
    .line 216
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 2"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 218
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingScanFrequency:Z
    .line 219
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendScanFrequencies()V
    .line 220
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 221
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 224
    :cond_3
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPower:Z
    if-eqz v3, :cond_5
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-nez v3, :cond_5
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-nez v3, :cond_5
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_5
    .line 225
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 3.1"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 226
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingPower:Z
    .line 227
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "auto_change_antenna_power"
    invoke-static {v3, v7}, Lcom/shareit/messenger/db/Metadata;->getValue(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    .line 229
    .local v3, "autoChange":I
    if-ne v3, v0, :cond_4
    .line 230
    const/16 v7, 0x6b
    invoke-direct {p0, v7, v2}, Lcom/shareit/messenger/socket/MessageExchanger;->setPower(II)V
    goto :goto_1
    .line 232
    :cond_4
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setPowerDB()V
    .line 234
    :goto_1
    new-instance v7, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v7, p0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v7, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 235
    iget-object v7, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v7}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 238
    .end local v3    # "autoChange":I
    :cond_5
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    if-eqz v3, :cond_6
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-nez v3, :cond_6
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-nez v3, :cond_6
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_6
    .line 239
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 3.2"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 240
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingPower:Z
    .line 241
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setPowerDB()V
    .line 242
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 243
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 247
    :cond_6
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    if-eqz v3, :cond_7
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-nez v3, :cond_7
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-nez v3, :cond_7
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    if-nez v3, :cond_7
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPower:Z
    if-nez v3, :cond_7
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_7
    .line 248
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 4"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 250
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingSpreadingFactor:Z
    .line 251
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setSpreadingfactor()V
    .line 252
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 253
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 256
    :cond_7
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    if-eqz v3, :cond_8
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-nez v3, :cond_8
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-nez v3, :cond_8
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPower:Z
    if-nez v3, :cond_8
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    if-nez v3, :cond_8
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    if-nez v3, :cond_8
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_8
    .line 257
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 5"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 259
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingCodeRate:Z
    .line 260
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setCodeRate()V
    .line 261
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 262
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 265
    :cond_8
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    if-eqz v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-nez v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-nez v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPower:Z
    if-nez v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    if-nez v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    if-nez v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    if-nez v3, :cond_9
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_9
    .line 266
    const-string v3, "CheckSumFF"
    const-string v7, "STEP: 6"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 268
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->settingBandwidth:Z
    .line 269
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->setBandWidth()V
    .line 270
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    .line 271
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->waiterThread:Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$WaitTimeOut;->startThread()V
    .line 274
    :cond_9
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPower:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setPowerDB:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    if-eq v3, v0, :cond_b
    sget-boolean v3, Lcom/shareit/messenger/socket/MessageExchanger;->wait:Z
    if-nez v3, :cond_b
    .line 275
    const-string v3, "CheckSumFF"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "STEP: ALL: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v8, Lcom/shareit/messenger/util/Util;->carrierSender:Z
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 277
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->sendPendingmessages:Z
    if-eqz v3, :cond_b
    .line 278
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->sendPendingmessages:Z
    .line 279
    sget-object v3, Lcom/shareit/messenger/app/MainApp;->db:Lnet/sqlcipher/database/SQLiteDatabase;
    invoke-static {v3, v2}, Lcom/shareit/messenger/db/Message;->getAllPending(Lnet/sqlcipher/database/SQLiteDatabase;I)Ljava/util/ArrayList;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-lez v3, :cond_a
    .line 281
    const-string v3, "COMMAND_SEND"
    const-string v7, "sending from THREAD 1 "
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 282
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendCommand()V
    goto :goto_2
    .line 283
    :cond_a
    sget-boolean v3, Lcom/shareit/messenger/util/Util;->carrierSender:Z
    if-nez v3, :cond_b
    .line 285
    const-string v3, "CarrierTimer"
    const-string v7, "Starts Send carrier thread"
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 287
    const-string v3, "COMMAND_SEND"
    const-string v7, "sending from THREAD 2 "
    invoke-static {v3, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 288
    invoke-direct {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendCommand()V
    .line 289
    sput v0, Lcom/shareit/messenger/socket/MessageExchanger;->tries:I
    .line 290
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->replyTimer:Lcom/shareit/messenger/socket/MessageExchanger$ReplyTimer;
    .line 292
    new-instance v3, Lcom/shareit/messenger/socket/MessageExchanger$CarrierTimer;
    invoke-direct {v3, p0}, Lcom/shareit/messenger/socket/MessageExchanger$CarrierTimer;-><init>(Lcom/shareit/messenger/socket/MessageExchanger;)V
    iput-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->carrierTimer:Lcom/shareit/messenger/socket/MessageExchanger$CarrierTimer;
    .line 311
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/shareit/messenger/socket/MessageExchanger;->receiveData()[B
    move-result-object v3
    move-object v5, v3
    .line 312
    if-eqz v5, :cond_0
    .line 313
    invoke-direct {p0, v5}, Lcom/shareit/messenger/socket/MessageExchanger;->processData([B)V
    goto/16 :goto_0
    .line 317
    :cond_c
    sput-byte v2, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 318
    sput v4, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    .line 319
    sput v4, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    .line 321
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 322
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setPower:Z
    .line 323
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 324
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    .line 325
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->sendPendingmessages:Z
    .line 326
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    .line 327
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    .line 328
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .line 336
    .end local v5    # "recv":[B
    .end local v6    # "mobId":I
    :cond_d
    goto :goto_3
    .line 333
    :catch_0
    move-exception v3
    .line 334
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Message Exchanger"
    const-string v6, "Exception caught in messageExchanger main thread"
    invoke-static {v5, v6}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 335
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    .line 338
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v3, "Message Exchanger"
    const-string v5, "Stopped"
    invoke-static {v3, v5}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 340
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    if-eqz v3, :cond_e
    .line 341
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timer:Lcom/shareit/messenger/socket/MessageExchanger$Timer;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$Timer;->stopThread()V
    .line 344
    :cond_e
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    if-eqz v3, :cond_f
    .line 345
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->timeOut:Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;
    invoke-virtual {v3}, Lcom/shareit/messenger/socket/MessageExchanger$TimeOut;->stopThread()V
    .line 348
    :cond_f
    sput v4, Lcom/shareit/messenger/util/Util;->COMMAND_COUNT:I
    .line 349
    sput v4, Lcom/shareit/messenger/util/Util;->MESSAGES_COUNT:I
    .line 350
    sput-byte v2, Lcom/shareit/messenger/util/Util;->CHANNEL_NUM:B
    .line 351
    sput-boolean v4, Lcom/shareit/messenger/socket/MessageExchanger;->readyReply:Z
    .line 352
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->gpsThreadRunning:Z
    .line 353
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->checkMessage:Z
    .line 354
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isConnected:Z
    .line 355
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->connectInfo:Z
    .line 356
    iget-object v2, p0, Lcom/shareit/messenger/socket/MessageExchanger;->context:Landroid/app/Activity;
    const-string v3, "edu.google.intent.DISCONNECTED_FROM_SERVER"
    const-string v5, "Disconnected"
    invoke-static {v2, v3, v5}, Lcom/shareit/messenger/util/Util;->notifyOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .line 359
    iput-boolean v4, p0, Lcom/shareit/messenger/socket/MessageExchanger;->isRunning:Z
    .line 360
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setFrequency:Z
    .line 361
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setPower:Z
    .line 362
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->shouldChangePower:Z
    .line 363
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setScanFrequency:Z
    .line 364
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->sendPendingmessages:Z
    .line 365
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setCodeRate:Z
    .line 366
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setBandwidth:Z
    .line 367
    sput-boolean v0, Lcom/shareit/messenger/util/Util;->setSpeadingFactor:Z
    .line 368
    sput-boolean v4, Lcom/shareit/messenger/util/Util;->sendScanMessage:Z
    .line 369
    sput v4, Lcom/shareit/messenger/util/Util;->index:I
    sput v0, Lcom/shareit/messenger/util/Util;->channel:I
    .line 370
    return-void
.end method
.method public declared-synchronized sendData([B)V
    .locals 14
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    monitor-enter p0
    .line 2991
    const/4 v0, 0x2
    :try_start_0
    aget-byte v0, p1, v0
    const-wide/16 v1, 0x3e8
    const/16 v3, 0x100
    const/16 v4, 0xff
    const/16 v5, 0x16
    const/4 v6, 0x0
    if-ne v0, v5, :cond_6
    .line 2992
    const-string v0, "Message Exchanger"
    const-string v7, "In send SMS "
    invoke-static {v0, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2993
    const-string v0, "Message Exchanger"
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "data.length "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v8, p1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v0, v7}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 2994
    array-length v0, p1
    add-int/lit8 v0, v0, 0x1
    invoke-static {v0}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v0
    .line 2995
    .local v0, "length":[B
    array-length v7, v0
    array-length v8, p1
    add-int/2addr v7, v8
    add-int/lit8 v7, v7, 0x1
    new-array v7, v7, [B
    .line 2996
    .local v7, "c":[B
    array-length v8, v0
    invoke-static {v0, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 2997
    array-length v8, v0
    array-length v9, p1
    invoke-static {p1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 3012
    const-string v8, "Message Exchanger"
    const-string v9, "Printing array before hash "
    invoke-static {v8, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3013
    invoke-static {v7}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3015
    const-string v8, "CheckSum"
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "sentArray[4] "
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v10, 0x4
    aget-byte v11, v7, v10
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v8, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3017
    aget-byte v8, v7, v10
    const/16 v9, 0x15
    const/4 v11, 0x5
    if-eq v8, v9, :cond_0
    aget-byte v8, v7, v10
    if-eq v8, v5, :cond_0
    aget-byte v5, v7, v10
    const/16 v8, 0x3d
    if-eq v5, v8, :cond_0
    aget-byte v5, v7, v10
    const/16 v8, 0x46
    if-ne v5, v8, :cond_1
    .line 3018
    :cond_0
    invoke-static {v7}, Lcom/shareit/messenger/crypto/AdvancedCrypto;->generateHashes([B)V
    .line 3019
    move v5, v11
    .line 3019
    .local v5, "i":I
    :goto_0
    array-length v8, v7
    add-int/lit8 v8, v8, -0xb
    if-ge v5, v8, :cond_1
    .line 3020
    aget-byte v8, v7, v5
    sget-object v9, Lcom/shareit/messenger/util/Util;->hashArray:[B
    aget-byte v9, v9, v5
    xor-int/2addr v8, v9
    int-to-byte v8, v8
    aput-byte v8, v7, v5
    .line 3019
    add-int/lit8 v5, v5, 0x1
    goto :goto_0
    .line 3023
    .end local v5    # "i":I
    :cond_1
    const-string v5, "Message Exchanger"
    const-string v8, "Printing array after hash "
    invoke-static {v5, v8}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3024
    invoke-static {v7}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3026
    array-length v5, v7
    add-int/lit8 v5, v5, -0x6
    new-array v5, v5, [B
    .line 3027
    .local v5, "temp3":[B
    array-length v8, v7
    add-int/lit8 v8, v8, -0x6
    invoke-static {v7, v11, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 3029
    move v8, v6
    .line 3029
    .local v8, "i":I
    :goto_1
    array-length v9, v5
    if-ge v8, v9, :cond_2
    .line 3030
    aget-byte v9, v5, v8
    sget-object v10, Lcom/shareit/messenger/util/Config;->randomBytes:[I
    aget v10, v10, v8
    xor-int/2addr v9, v10
    int-to-byte v9, v9
    aput-byte v9, v5, v8
    .line 3029
    add-int/lit8 v8, v8, 0x1
    goto :goto_1
    .line 3032
    .end local v8    # "i":I
    :cond_2
    const-string v8, "Message Exchanger"
    const-string v9, "Printing array shuffling "
    invoke-static {v8, v9}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3034
    invoke-direct {p0, v5}, Lcom/shareit/messenger/socket/MessageExchanger;->forwardBitShifting([B)[B
    move-result-object v8
    .line 3035
    .local v8, "newTemp":[B
    const-string v9, "Message Exchanger"
    const-string v10, "Printing array after bit shifting "
    invoke-static {v9, v10}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3036
    invoke-static {v8}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3037
    array-length v9, v7
    add-int/lit8 v9, v9, -0x6
    invoke-static {v8, v6, v7, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 3040
    const/4 v9, 0x0
    .line 3041
    .local v9, "checkSum":B
    array-length v10, v7
    move v11, v9
    move v9, v6
    .line 3041
    .end local v9    # "checkSum":B
    .local v11, "checkSum":B
    :goto_2
    if-ge v9, v10, :cond_4
    aget-byte v12, v7, v9
    .line 3042
    .local v12, "b":B
    and-int v13, v4, v12
    int-to-byte v13, v13
    add-int/2addr v13, v11
    int-to-byte v11, v13
    .line 3043
    if-gez v11, :cond_3
    .line 3044
    add-int v13, v3, v11
    int-to-byte v11, v13
    .line 3041
    .end local v12    # "b":B
    :cond_3
    add-int/lit8 v9, v9, 0x1
    goto :goto_2
    .line 3047
    :cond_4
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "checkSum "
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3048
    array-length v3, v0
    array-length v4, p1
    add-int/2addr v3, v4
    aput-byte v11, v7, v3
    .line 3050
    const-string v3, "Message Exchanger"
    const-string v4, "Print sending shuffled array"
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3051
    invoke-static {v7}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3052
    move v3, v6
    .line 3052
    .local v3, "i":I
    :goto_3
    array-length v4, v7
    if-ge v3, v4, :cond_5
    .line 3053
    aget-byte v4, v7, v3
    sget-object v9, Lcom/shareit/messenger/util/Util;->headerarray:[B
    aget-byte v9, v9, v3
    xor-int/2addr v4, v9
    int-to-byte v4, v4
    aput-byte v4, v7, v3
    .line 3052
    add-int/lit8 v3, v3, 0x1
    goto :goto_3
    .line 3055
    .end local v3    # "i":I
    :cond_5
    invoke-static {v7}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3057
    const-string v3, "CheckSum"
    const-string v4, "Success Data Sending"
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3058
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    array-length v4, v7
    invoke-virtual {v3, v7, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    .line 3059
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    .line 3060
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    .line 3062
    .end local v0    # "length":[B
    .end local v5    # "temp3":[B
    .end local v7    # "c":[B
    .end local v8    # "newTemp":[B
    .end local v11    # "checkSum":B
    goto/16 :goto_6
    .line 3064
    :cond_6
    invoke-static {p1}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3066
    array-length v0, p1
    add-int/lit8 v0, v0, 0x1
    invoke-static {v0}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v0
    .line 3067
    .restart local v0    # "length":[B
    array-length v5, v0
    array-length v7, p1
    add-int/2addr v5, v7
    add-int/lit8 v5, v5, 0x1
    new-array v5, v5, [B
    .line 3068
    .local v5, "c":[B
    array-length v7, v0
    invoke-static {v0, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 3069
    array-length v7, v0
    array-length v8, p1
    invoke-static {p1, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 3070
    const/4 v7, 0x0
    .line 3071
    .local v7, "checkSum":B
    array-length v8, v5
    move v9, v7
    move v7, v6
    .line 3071
    .end local v7    # "checkSum":B
    .restart local v9    # "checkSum":B
    :goto_4
    if-ge v7, v8, :cond_8
    aget-byte v10, v5, v7
    .line 3072
    .local v10, "b":B
    and-int v11, v4, v10
    int-to-byte v11, v11
    add-int/2addr v11, v9
    int-to-byte v9, v11
    .line 3074
    if-gez v9, :cond_7
    .line 3075
    add-int v11, v3, v9
    int-to-byte v9, v11
    .line 3071
    .end local v10    # "b":B
    :cond_7
    add-int/lit8 v7, v7, 0x1
    goto :goto_4
    .line 3078
    :cond_8
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "data array length "
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v7, v5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3079
    array-length v3, v0
    array-length v4, p1
    add-int/2addr v3, v4
    aput-byte v9, v5, v3
    .line 3080
    const-string v3, "Message Exchanger"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "c.length "
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v7, v5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3082
    invoke-static {v5}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3084
    move v3, v6
    .line 3084
    .restart local v3    # "i":I
    :goto_5
    array-length v4, v5
    if-ge v3, v4, :cond_9
    .line 3085
    aget-byte v4, v5, v3
    sget-object v7, Lcom/shareit/messenger/util/Util;->headerarray:[B
    aget-byte v7, v7, v3
    xor-int/2addr v4, v7
    int-to-byte v4, v4
    aput-byte v4, v5, v3
    .line 3084
    add-int/lit8 v3, v3, 0x1
    goto :goto_5
    .line 3088
    .end local v3    # "i":I
    :cond_9
    invoke-static {v5}, Lcom/shareit/messenger/socket/MessageExchanger;->printArray([B)V
    .line 3090
    const-string v3, "CheckSum"
    const-string v4, "Success Data Sending"
    invoke-static {v3, v4}, Lcom/shareit/messenger/util/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    .line 3091
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    array-length v4, v5
    invoke-virtual {v3, v5, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    .line 3092
    iget-object v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    .line 3093
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .line 3096
    .end local v0    # "length":[B
    .end local v5    # "c":[B
    .end local v9    # "checkSum":B
    :goto_6
    monitor-exit p0
    return-void
    .line 2990
    .end local p1    # "data":[B
    :catchall_0
    move-exception p1
    monitor-exit p0
    throw p1
.end method
.method public startReceiver()V
    .locals 1
    .line 147
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->start:Z
    .line 148
    iget-object v0, p0, Lcom/shareit/messenger/socket/MessageExchanger;->thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    .line 149
    return-void
.end method
.method public stopReceiver()V
    .locals 4
    .line 153
    const/4 v0, 0x3
    :try_start_0
    new-array v0, v0, [B
    .line 154
    .local v0, "disconnect":[B
    sget v1, Lcom/shareit/messenger/util/Util;->MOB_ID:I
    invoke-static {v1}, Lcom/shareit/messenger/util/Util;->convertToByte(I)[B
    move-result-object v1
    const/4 v2, 0x2
    const/4 v3, 0x0
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .line 156
    aput-byte v2, v0, v2
    .line 157
    invoke-virtual {p0, v0}, Lcom/shareit/messenger/socket/MessageExchanger;->sendData([B)V
    .line 158
    iput-boolean v3, p0, Lcom/shareit/messenger/socket/MessageExchanger;->start:Z
    .line 159
    iget-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    .line 160
    iget-object v1, p0, Lcom/shareit/messenger/socket/MessageExchanger;->os:Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .line 160
    .end local v0    # "disconnect":[B
    goto :goto_0
    .line 167
    :catch_0
    move-exception v0
    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
    .line 165
    :catch_1
    move-exception v0
    .line 166
    .local v0, "e":Landroid/os/NetworkOnMainThreadException;
    invoke-virtual {v0}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V
    .line 166
    .end local v0    # "e":Landroid/os/NetworkOnMainThreadException;
    goto :goto_0
    .line 163
    :catch_2
    move-exception v0
    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    .line 164
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
    .line 161
    :catch_3
    move-exception v0
    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop
    .line 170
    :goto_1
    return-void
.end method
