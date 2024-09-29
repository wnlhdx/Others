using Godot;
using System;

public partial class Paddle : Node2D
{
	[Export] public float Speed = 300.0f;  // 球拍的移动速度
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	public void HandleInput(string upKey, string downKey, float delta)
	{
		if (Input.IsActionPressed(upKey))
		{
			Position += new Vector2(0, -Speed * delta);  // 上移
		}
		else if (Input.IsActionPressed(downKey))
		{
			Position += new Vector2(0, Speed * delta);   // 下移
		}
	}

	public bool IsCollidingWith(Ball ball)
	{
		return GetRect().Intersects(ball.GetRect());
	}

	public Rect2 GetRect()
	{
		return new Rect2(Position, new Vector2(10, 50)); // 假设球拍是10x50的矩形
	}
}
